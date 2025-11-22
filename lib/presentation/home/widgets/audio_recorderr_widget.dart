import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:voice_summary/core/extensions/extensions.dart';

class AudioRecorderWidget extends StatefulWidget {
  const AudioRecorderWidget({
    super.key,
    required this.onRecordFinished, // NEW
  });

  /// Called when the user stops a recording.
  /// `path`  – absolute path of the saved .m4a file
  /// `duration` – length of the recorded audio
  final void Function(String path, Duration duration) onRecordFinished;

  @override
  State<AudioRecorderWidget> createState() => _AudioRecorderWidgetState();
}

class _AudioRecorderWidgetState extends State<AudioRecorderWidget>
    with TickerProviderStateMixin {
  // ---------- Packages ----------
  final AudioRecorder _record = AudioRecorder();
  final AudioPlayer _audioPlayer = AudioPlayer();

  // ---------- UI state ----------
  bool _isRecording = false;
  bool _isPlaying = false;
  String? _filePath;
  Duration _recordDuration = Duration.zero; // elapsed while recording
  Duration _currentPosition = Duration.zero; // playback position
  Duration _audioDuration = Duration.zero; // total length of the file

  // ---------- Ticker for live timer ----------
  late final Ticker _ticker;

  @override
  void initState() {
    super.initState();

    _ticker = createTicker((elapsed) {
      if (_isRecording) {
        setState(() => _recordDuration = elapsed);
      }
    });

    // Playback position updates
    _audioPlayer.onPositionChanged.listen((pos) {
      setState(() => _currentPosition = pos);
    });

    // When playback ends
    _audioPlayer.onPlayerComplete.listen((_) {
      setState(() {
        _isPlaying = false;
        _currentPosition = Duration.zero;
      });
    });

    // When a new file is ready we need its total duration for the slider
    _audioPlayer.onDurationChanged.listen((dur) {
      setState(() => _audioDuration = dur);
    });
  }

  @override
  void dispose() {
    _ticker.dispose();
    _record.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  // --------------------------------------------------------------------- //
  //                         RECORDING
  // --------------------------------------------------------------------- //
  Future<void> _startRecording() async {
    final dir = await getTemporaryDirectory();
    final path =
        '${dir.path}/recording_${DateTime.now().millisecondsSinceEpoch}.m4a';

    if (await _record.hasPermission()) {
      await _record.start(
        const RecordConfig(
          encoder: AudioEncoder.aacEld,
          bitRate: 128000,
          numChannels: 2,
        ),
        path: path,
      );

      setState(() {
        _filePath = path;
        _isRecording = true;
        _recordDuration = Duration.zero;
      });
      _ticker.start();
    }
  }

  Future<void> _stopRecording() async {
    final path = await _record.stop();
    _ticker.stop();

    setState(() => _isRecording = false);

    if (path != null && path.isNotEmpty) {
      setState(() => _filePath = path);

      // ----- Get the real audio length -----
      final file = File(path);
      if (await file.exists()) {
        // `audioplayers` can give us the duration once we set the source
        await _audioPlayer.setSource(DeviceFileSource(path));
        // `onDurationChanged` will fire and fill `_audioDuration`
      }

      // ----- CALLBACK -----
      widget.onRecordFinished(path, _recordDuration);
    }
  }

  // --------------------------------------------------------------------- //
  //                         PLAYBACK
  // --------------------------------------------------------------------- //
  Future<void> _playPause() async {
    if (_filePath == null) return;

    if (_isPlaying) {
      await _audioPlayer.pause();
      setState(() => _isPlaying = false);
    } else {
      await _audioPlayer.play(DeviceFileSource(_filePath!));
      setState(() => _isPlaying = true);
    }
  }

  // --------------------------------------------------------------------- //
  //                         UI HELPERS
  // --------------------------------------------------------------------- //
  String _format(Duration d) {
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  // --------------------------------------------------------------------- //
  //                         BUILD
  // --------------------------------------------------------------------- //
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ---- Record / Stop button ----
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF1d8354),
            shape: RoundedRectangleBorder(borderRadius: 12.borderRadius),
          ),
          icon: Icon(
            _isRecording ? Icons.stop : Icons.mic,
            color: Colors.white,
          ),
          label: Text(
            _isRecording ? "ايقاف التسجيل" : "بدء التسجيل",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          onPressed: _isRecording ? _stopRecording : _startRecording,
        ),

        // ---- Live timer while recording ----
        if (_isRecording) Text("يتم التسجيل: ${_format(_recordDuration)}"),

        const SizedBox(height: 20),

        // ---- Playback UI (only when a file exists) ----
        if (_filePath != null && !_isRecording) ...[
          // Slider
          Slider(
            min: 0,
            max: _audioDuration.inSeconds.toDouble(),
            value: _currentPosition.inSeconds.toDouble().clamp(
              0,
              _audioDuration.inSeconds.toDouble(),
            ),
            onChanged: (v) async {
              await _audioPlayer.seek(Duration(seconds: v.toInt()));
            },
          ),

          // Play/Pause + time display
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
                onPressed: _playPause,
              ),
              Text("${_format(_currentPosition)} / ${_format(_audioDuration)}"),
            ],
          ),
        ],
      ],
    );
  }
}
