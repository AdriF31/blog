import 'package:blog/base/base_controller.dart';
import 'package:blog/data/model/login_model.dart';
import 'package:blog/data/storage_core.dart';
import 'package:blog/ui/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class LoginController extends BaseController {
  final storage = StorageCore();
  LoginModel loginModel = LoginModel();
  final isObscured = false.obs;
  final TextEditingController usernameController =
      TextEditingController(text: 'dry');
  final TextEditingController passwordController =
      TextEditingController(text: '123123123');
  final formKey = GlobalKey<FormState>();
  @override
  void onInit() {
    super.onInit();
    usernameController.text;
    passwordController.text;
    update();
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  void doLogin(String username, String password) async {
    try {
      var response = await repository.postLogin(username, password);
      loginModel = response;
      if (loginModel.meta?.status == "success") {
        storage.saveAuthResponse(response);
        Fluttertoast.showToast(msg: response.meta!.message!);
        update();
        Get.offAll(() => const HomePage(), arguments: passwordController.text);
      } else {
        Fluttertoast.showToast(msg: response.meta!.message!);
      }
    } catch (e) {
      return null;
    }
  }
}
