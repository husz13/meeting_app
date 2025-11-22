import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voice_summary/core/injection_container.dart';
import 'package:voice_summary/core/states/base_state/base_state.dart';
import 'package:voice_summary/domain/entities/file_entity.dart';
import 'package:voice_summary/presentation/home/cubit/home_cubit.dart';
import 'package:voice_summary/presentation/home/widgets/download_file_widget.dart';

class ReportsTab extends StatefulWidget {
  const ReportsTab({super.key});

  @override
  State<ReportsTab> createState() => _ReportsTabState();
}

class _ReportsTabState extends State<ReportsTab> {
  @override
  void initState() {
    sl<HomeCubit>().getFiles();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<HomeCubit, BaseState<List<FileEntity>>>(
            bloc: sl<HomeCubit>(),
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => SizedBox.shrink(),
                success: (data) => ListView.separated(
                  separatorBuilder: (context, idx) => 8.verticalSpace,
                  itemCount: data.data.length,
                  itemBuilder: (ctx, idx) =>
                      DownloadableUnknownExtensionFileWidget(
                        path: data.data[idx].path,
                        name: data.data[idx].name,
                      ),
                ),
                failure: (failure) => ElevatedButton(
                  onPressed: () {
                    sl<HomeCubit>().getFiles();
                  },
                  child: Text("try again"),
                ),
                loading: (_) => Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ),
      ],
    );
  }
}
