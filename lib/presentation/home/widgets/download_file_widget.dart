import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voice_summary/core/injection_container.dart';
import 'package:voice_summary/core/states/base_state/base_state.dart';
import 'package:voice_summary/presentation/home/widgets/loading_dialog.dart';
import 'package:voice_summary/core/media_cubits/download_cubit.dart';

class DownloadableUnknownExtensionFileWidget extends StatelessWidget {
  const DownloadableUnknownExtensionFileWidget({
    super.key,
    required this.path,
    required this.name,
  });
  final String path;
  final String name;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DownloadCubit, BaseState<Uint8List>>(
      bloc: sl<DownloadCubit>(),
      listener: (context, state) {
        state.mapOrNull(success: (_) {});
      },
      builder: (context, state) {
        return ListTile(
          onTap: () {
            showDialog(
              context: context,
              builder: (ctx) => LoadingDialog(fileName: name),
            );
            sl<DownloadCubit>().downloadFile(filename: name, filepath: path);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
            side: BorderSide(width: 1.w, color: Colors.grey),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),

          title: Text(name),
          trailing: Icon(Icons.file_download_outlined, color: Colors.red),
        );
      },
    );
  }
}
