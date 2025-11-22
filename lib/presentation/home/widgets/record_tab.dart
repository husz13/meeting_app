import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:logger/logger.dart';
import 'package:toastification/toastification.dart';
import 'package:voice_summary/core/extensions/extensions.dart';
import 'package:voice_summary/core/injection_container.dart';
import 'package:voice_summary/core/states/base_state/base_state.dart';
import 'package:voice_summary/domain/use_cases/save_login_data_use_case/save_login_data_use_case.dart';
import 'package:voice_summary/presentation/home/widgets/audio_recorderr_widget.dart';
import 'package:voice_summary/core/media_cubits/upload_cubit.dart';
import 'package:voice_summary/presentation/login/cubit/last_login_cubit.dart';

class RecordTab extends StatefulWidget {
  const RecordTab({super.key});

  @override
  State<RecordTab> createState() => _RecordTabState();
}

class _RecordTabState extends State<RecordTab> {
  File? _mediaFile;
  String? _remotePath;
  Future<void> _pickMediaFile() async {
    // Allow both audio and video files
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        'mp3',
        'm4a',
        'wav',
        'aac',
        'mp4',
        'mov',
        'mkv',
        'avi',
      ],
    );

    if (result != null && result.files.single.path != null) {
      final filePath = result.files.single.path!;
      _mediaFile = File(filePath);
      sl<UploadCubit>().uploadFile(
        localPath: filePath,
        remotePath: _remotePath ?? '',
      );
    } else {
      "لا يوجد ملف تم اختياره".showToast(type: ToastificationType.info);
    }
  }

  @override
  void initState() {
    sl<LastLoginCubit>().fetchLastLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final uploadCubit = sl<UploadCubit>();

    return BlocConsumer<LastLoginCubit, BaseState<LastLoginParams?>>(
      bloc: sl<LastLoginCubit>(),
      listener: (context, state) {
        state.mapOrNull(
          success: (data) {
            _remotePath = data.data?.recordsPath;
          },
          failure: (f) {
            Logger().e("Failed to fetch last login data: ${f.failure.message}");
          },
        );
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🎙️ Record new audio
            AudioRecorderWidget(
              onRecordFinished: (path, duration) async {
                await FilePicker.platform.saveFile(
                  bytes: await File(path).readAsBytes(),
                  fileName: path.split('/').last,
                );
                _mediaFile = File(path);

                uploadCubit.uploadFile(
                  localPath: path,
                  remotePath: _remotePath ?? '',
                );
              },
            ),
            const SizedBox(height: 20),

            // 📁 Choose existing media (audio/video)
            ElevatedButton.icon(
              onPressed: _pickMediaFile,
              icon: const Icon(Icons.perm_media, color: Colors.white),
              label: const Text(
                "اختر ملف متاح صوت/فيديو",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                backgroundColor: const Color(0xFF1d8354),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 📤 Upload progress listener
            BlocConsumer<UploadCubit, BaseState<void>>(
              bloc: uploadCubit,
              listenWhen: (previous, current) => previous != current,
              listener: (context, state) {
                state.mapOrNull(
                  success: (_) {
                    "تم رفع الملف بنجاح".showToast(
                      type: ToastificationType.success,
                    );
                  },
                  failure: (f) {
                    f.failure.message.showToast(type: ToastificationType.error);
                  },
                );
              },
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => const SizedBox.shrink(),
                  progress: (value) =>
                      CircularProgressIndicator(value: value.progress),
                  failure: (failure) => ElevatedButton(
                    onPressed: () {
                      if (_mediaFile != null) {
                        uploadCubit.uploadFile(
                          localPath: _mediaFile!.path,
                          remotePath: _remotePath ?? '',
                        );
                      }
                    },
                    child: const Text(
                      "اعادة المحاولة",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
