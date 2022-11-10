import 'package:blog/base/base_controller.dart';
import 'package:blog/data/model/register_model.dart';
import 'package:blog/data/storage_core.dart';
import 'package:blog/ui/auth/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class RegisterController extends BaseController {
  StorageCore storage = StorageCore();
  RegisterModel? registerModel = RegisterModel();
  final TextEditingController usernameController =
      TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController nameController = TextEditingController(text: '');
  @override
  void onInit() {
    super.onInit();
    usernameController.text;
    passwordController.text;
    nameController.text;
    emailController.text;
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
    nameController.dispose();
    emailController.dispose();
  }

  void doRegister(
      String name, String email, String username, String password) async {
    try {
      // isLoading.isTrue;
      var response =
          await repository.postRegister(name, email, username, password);
      registerModel = response;
      if (registerModel?.meta?.status == "success") {
        Fluttertoast.showToast(msg: registerModel!.meta!.message!);
        update();
        Get.offAll(() => const LoginPage());
      } else if (registerModel?.meta?.status == "error") {
        Fluttertoast.showToast(msg: 'data tidak lengkap');
      }
    } catch (e) {
      return null;
    }
  }
}
