import 'package:go_router/go_router.dart';
import 'package:mohamed_gamal_sabri/features/Auth/presentation/views/complete_register_view.dart';
import 'package:mohamed_gamal_sabri/features/Auth/presentation/views/login_view.dart';
import 'package:mohamed_gamal_sabri/features/Auth/presentation/views/register_view.dart';
import 'package:mohamed_gamal_sabri/features/home/presentation/views/countries_view.dart';
import 'package:mohamed_gamal_sabri/features/home/presentation/views/root_view.dart';
import 'package:mohamed_gamal_sabri/features/home/presentation/views/services_view.dart';
import 'package:mohamed_gamal_sabri/features/home/presentation/views/who_am_i_view.dart';

abstract class AppRouter {
  static const String kHomeView = '/HomeView';
  static const String kRegisterView = '/RegisterView';
  static const String kLoginView = '/LoginView';
  static const String kCountriesView = '/CountriesView';
  static const String kServicesView = '/ServicesView';
  static const String kWhoAmIView = '/WhoAmIView';
  static const String kCompleteRegisterView = '/CompleteRegisterView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginViw(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kCompleteRegisterView,
        builder: (context, state) => const CompleteRegisterView(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const RootView(),
      ),
      GoRoute(
        path: kCountriesView,
        builder: (context, state) => const CountriesView(),
      ),
      GoRoute(
        path: kServicesView,
        builder: (context, state) => const ServicesView(),
      ),
       GoRoute(
        path: kWhoAmIView,
        builder: (context, state) => const WhoAmIView(),
      ),
    ],
  );
}
