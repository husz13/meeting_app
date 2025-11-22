import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';
import 'package:voice_summary/core/extensions/extensions.dart';
import 'package:voice_summary/core/injection_container.dart';
import 'package:voice_summary/core/states/base_state/base_state.dart';
import 'package:voice_summary/core/widgets/custom_input.dart';
import 'package:voice_summary/domain/use_cases/save_login_data_use_case/save_login_data_use_case.dart';
import 'package:voice_summary/presentation/home/pages/home_screen.dart';
import 'package:voice_summary/presentation/login/cubit/last_login_cubit.dart';
import 'package:voice_summary/presentation/login/cubit/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = '/login';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _recordsPathController = TextEditingController();
  final TextEditingController _reportsPathController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    sl<LastLoginCubit>().fetchLastLogin();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _recordsPathController.dispose();
    _reportsPathController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
        child: Form(
          key: _formKey,
          child: BlocConsumer<LastLoginCubit, BaseState<LastLoginParams?>>(
            bloc: sl<LastLoginCubit>(),
            listener: (context, state) {
              state.mapOrNull(
                success: (successState) {
                  final data = successState.data;
                  if (data != null) {
                    _usernameController.text = data.username;
                    _passwordController.text = data.password;
                    _recordsPathController.text = data.recordsPath;
                    _reportsPathController.text = data.reportsPath;
                  }
                },
              );
            },
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: Color(0xFF277656),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  32.verticalSpace,
                  CustomInput(
                    title: 'اسم المستخدم',
                    controller: _usernameController,
                  ),
                  16.verticalSpace,
                  CustomInput.obscure(
                    required: true,
                    title: 'كلمة المرور',
                    controller: _passwordController,
                  ),
                  16.verticalSpace,
                  CustomInput(
                    title: 'مسار التسجيل',
                    controller: _recordsPathController,
                  ),
                  16.verticalSpace,
                  CustomInput(
                    title: 'مسار التقارير',
                    controller: _reportsPathController,
                  ),

                  24.verticalSpace,
                  SizedBox(
                    width: double.infinity,
                    child: BlocConsumer<LoginCubit, BaseState<void>>(
                      bloc: sl<LoginCubit>(),
                      listener: (context, state) {
                        state.mapOrNull(
                          success: (_) {
                            context.goNamed(HomeScreen.routeName);
                          },
                          failure: (failureState) {
                            failureState.failure.message.showToast(
                              type: ToastificationType.error,
                            );
                          },
                        );
                      },
                      builder: (context, state) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: 11.borderRadius,
                            ),
                            backgroundColor: Color(0xFF1d8354),
                          ),
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            }
                            sl<LoginCubit>().login(
                              params: LastLoginParams(
                                username: _usernameController.text,
                                password: _passwordController.text,
                                recordsPath: _recordsPathController.text,
                                reportsPath: _reportsPathController.text,
                              ),
                            );
                          },
                          child: state.maybeMap(
                            orElse: () => Text(
                              'الدخول',
                              style: TextStyle(
                                fontSize: 19.sp,
                                color: Colors.white,
                              ),
                            ),
                            loading: (_) => SizedBox(
                              height: 24.h,
                              width: 24.h,
                              child: const CircularProgressIndicator(
                                color: Colors.black,
                                strokeWidth: 2,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
