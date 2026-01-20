import 'package:get/get.dart';
import 'package:scube_tl/feature/home/view/home_screen.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _checkLoginStatus();
  }

  void _checkLoginStatus() async {
    await Future.delayed(Duration(seconds: 2));

    {
      Get.offAll(() => HomeScreen());
    }
  }
}
