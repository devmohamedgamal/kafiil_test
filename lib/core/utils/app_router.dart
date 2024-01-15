import 'package:go_router/go_router.dart';
import 'package:mohamed_gamal_sabri/features/Auth/presentation/views/complete_register_view.dart';
import 'package:mohamed_gamal_sabri/features/Auth/presentation/views/login_view.dart';
import 'package:mohamed_gamal_sabri/features/Auth/presentation/views/register_view.dart';
import '../../features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const String kHomeView = '/HomeView';
  static const String kRegisterView = '/RegisterView';
  static const String kCompleteRegisterView = '/CompleteRegisterView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginViw(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kCompleteRegisterView,
        builder: (context, state) => const CompleteRegisterView(),
      ),
    ],
  );
}
