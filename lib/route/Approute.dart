import 'package:cat/route/routing.dart';
import 'package:cat/screens/aboutscreen.dart';
import 'package:cat/screens/homescreen.dart';
import 'package:cat/screens/signinscreen.dart';
import 'package:cat/screens/signupscreen.dart';
import 'package:cat/screens/splashscreen.dart';
import 'package:get/get.dart';

class AppRouter {
  final getPages = <GetPage>[
    GetPage(
      name: AppRoute.splash,
      page: () => const Splashscreen(),
    ),
    GetPage(
      name: AppRoute.signup,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: AppRoute.signin,
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: AppRoute.home,
      page: () => const Homescreen(),
    ),
    GetPage(
      name: AppRoute.about,
      page: () => const Aboutscreen(),
    ),
  ];
}
