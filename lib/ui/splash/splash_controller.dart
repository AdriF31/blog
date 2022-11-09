import 'dart:async';

import 'package:get/get.dart';

import '../../base/base_controller.dart';
import '../auth/login/login_page.dart';
import '../home/home_page.dart';

class SplashController extends BaseController {
  @override
  void onInit() {
    super.onInit();
    Timer(
        const Duration(seconds: 3), () => Get.offAll(() => const LoginPage()));
  }
}
