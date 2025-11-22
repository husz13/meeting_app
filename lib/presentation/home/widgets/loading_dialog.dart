import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';
import 'package:voice_summary/core/extensions/extensions.dart';
import 'package:voice_summary/core/injection_container.dart';
import 'package:voice_summary/core/states/base_state/base_state.dart';
import 'package:voice_summary/core/media_cubits/download_cubit.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key, required this.fileName});
  final String fileName;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocConsumer<DownloadCubit, BaseState<Uint8List>>(
          bloc: sl<DownloadCubit>(),
          listener: (context, state) => state.mapOrNull(
            success: (data) async {
              await FilePicker.platform.saveFile(
                bytes: data.data,
                fileName: fileName,
              );
              "تم تحميل الملف بنجاح".showToast(
                type: ToastificationType.success,
              );

              Navigator.of(context).pop();
              return Future.value(0);
            },
            failure: (failure) {
              return failure.failure.message.showToast(
                type: ToastificationType.error,
              );
            },
          ),
          builder: (context, state) {
            final progress = state.mapOrNull(progress: (data) => data.progress);
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CircularProgressIndicator(value: progress),
                ),
                const SizedBox(height: 16),
                const Text("Downloading, please wait..."),
              ],
            );
          },
        ),
      ),
    );
  }
}
