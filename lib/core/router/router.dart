import 'package:go_router/go_router.dart';
import 'package:voice_summary/presentation/home/pages/home_screen.dart';
import 'package:voice_summary/presentation/login/pages/login_screen.dart';

class AppRouter {
  late final router = GoRouter(
    initialLocation: LoginScreen.routeName,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      // final isLoggedIn = _homeCubit.state.status == BaseStatus.success;

      // If not logged in, always go to /login
      // if (!isLoggedIn && state.location != '/login') {
      //   return '/login';
      // }

      // If logged in, go to /home
      // if (isLoggedIn && state.location == '/login') {
      //   return '/home';
      // }

      return null;
    },
    routes: [
      GoRoute(
        path: LoginScreen.routeName,
        name: LoginScreen.routeName,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: HomeScreen.routeName,
        name: HomeScreen.routeName,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
