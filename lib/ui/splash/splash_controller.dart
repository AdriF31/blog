import 'dart:async';

import 'package:blog/data/storage_core.dart';
import 'package:blog/ui/home/home_page.dart';
import 'package:get/get.dart';

import '../../base/base_controller.dart';
import '../auth/login/login_page.dart';

class SplashController extends BaseController {
  StorageCore storage = StorageCore();
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 3), () {
      if (storage.getAccessToken() != 'token_not_loaded') {
        Get.offAll(() => HomePage());
      } else {
        Get.offAll(() => LoginPage());
      }
    });
  }
}
