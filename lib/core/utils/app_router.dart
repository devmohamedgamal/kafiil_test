import 'package:go_router/go_router.dart';
import 'package:mohamed_gamal_sabri/features/Auth/presentation/views/login_view.dart';
import '../../features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const String kHomeView = '/loginView';
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
    ],
  );
}
