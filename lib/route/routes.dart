import 'package:get/get.dart';
import 'package:scube_tl/feature/splash/splash_screen.dart';

class AppRoutes {
  static const String splash = '/splash';

  static List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => SplashScreen(),
      transition: Transition.leftToRight,
    ),
  ];
}
