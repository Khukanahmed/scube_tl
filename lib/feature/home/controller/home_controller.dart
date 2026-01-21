import 'dart:async';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final selectedTab = 0.obs;
  final selectedSourceLoad = 0.obs;
  final currentTemperature = 20.0.obs;

  Timer? _temperatureTimer;
  int _temperatureChangeCount = 0;
  final List<double> _temperatures = [20, 30, 40];

  void changeTab(int index) {
    selectedTab.value = index;
  }

  void changeSourceLoad(int index) {
    selectedSourceLoad.value = index;
  }

  void _startTemperatureAnimation() {
    _temperatureTimer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_temperatureChangeCount < 3) {
        currentTemperature.value =
            _temperatures[_temperatureChangeCount % _temperatures.length];
        _temperatureChangeCount++;
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void onInit() {
    super.onInit();
    _startTemperatureAnimation();
  }

  @override
  void onClose() {
    _temperatureTimer?.cancel();
    super.onClose();
  }
}
