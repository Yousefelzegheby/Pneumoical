import 'package:go_router/go_router.dart';
import 'package:kook/fratures/contact_us/presentation/contact_us.dart';
import 'package:kook/fratures/home_page/presentation/home_page.dart';
import 'package:kook/fratures/login_view/presentation/login_view.dart';
import 'package:kook/fratures/pheumonia/presentation/pheumonia_page.dart';
import 'package:kook/fratures/questions/presentation/questions_page.dart';
import 'package:kook/fratures/response/presentation/response.dart';
import 'package:kook/fratures/sign_up/presentation/signup_view.dart';
import 'package:kook/fratures/splash_view/presntation/splash_view.dart';
import 'package:kook/fratures/support/presentation/support_page.dart';

abstract class AppRouters {
  static final route = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: '/homepage',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/pheumonia',
      builder: (context, state) => const PheumoniaPage(),
    ),
    GoRoute(
      path: '/support',
      builder: (context, state) => const SupportPage(),
    ),
    GoRoute(
      path: '/response',
      builder: (context, state) => const ResponsePage(),
    ),
    GoRoute(
      path: '/question',
      builder: (context, state) => const QuestionsPage(),
    ),
    GoRoute(
      path: '/contactus',
      builder: (context, state) => const ContactUs(),
    ),
  ]);
}
