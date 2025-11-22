import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:voice_summary/core/widgets/custom_tab_bar.dart';
import 'package:voice_summary/presentation/home/widgets/record_tab.dart';
import 'package:voice_summary/presentation/home/widgets/reports_tab.dart';
import 'package:voice_summary/presentation/login/pages/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/logo.jpg', height: 75.h, width: 75.h),
          actions: [
            IconButton(
              onPressed: () {
                context.goNamed(LoginScreen.routeName);
              },
              icon: Icon(Icons.exit_to_app),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              CustomTabBar(
                tabs: [
                  Tab(text: "التسجيل"),
                  Tab(text: "التقارير"),
                ],
              ),

              Expanded(
                child: TabBarView(children: [RecordTab(), ReportsTab()]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
