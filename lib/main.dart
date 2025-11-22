import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toastification/toastification.dart';
import 'package:voice_summary/core/extensions/extensions.dart';
import 'package:voice_summary/core/router/router.dart';
import 'package:voice_summary/presentation/home/pages/home_screen.dart';
import 'package:voice_summary/core/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        375,
        812,
      ), // Set your design size (e.g., Figma size)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ToastificationWrapper(
          child: MaterialApp.router(
            title: 'مدون',
            theme: ThemeData(
              textTheme: GoogleFonts.ibmPlexSansArabicTextTheme(
                TextTheme(titleLarge: TextStyle(color: Color(0xFF1d8354))),
              ),
              inputDecorationTheme: InputDecorationTheme(
                contentPadding: EdgeInsetsDirectional.symmetric(
                  vertical: 9.h,
                  horizontal: 16.w,
                ),
                hintStyle: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xFF1d8354),
                  fontWeight: FontWeight.w500,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400]!),
                  borderRadius: 11.borderRadius,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF1d8354), width: 2),
                  borderRadius: 11.borderRadius,
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2),
                  borderRadius: 11.borderRadius,
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 3),
                  borderRadius: 11.borderRadius,
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300]!),
                  borderRadius: 11.borderRadius,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400]!),
                  borderRadius: 11.borderRadius,
                ),
              ),
              colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1d8354)),
            ),
            routerConfig: di.sl<AppRouter>().router,

            builder: (context, widget) {
              return MediaQuery(
                // Optional: Prevent font scaling issues
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: widget!,
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
