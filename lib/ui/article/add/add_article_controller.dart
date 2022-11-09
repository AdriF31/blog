import 'dart:io';

import 'package:blog/base/base_controller.dart';
import 'package:blog/data/storage_core.dart';
import 'package:blog/ui/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddArticleController extends BaseController {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  String? token = StorageCore().getAccessToken();
  File? gettedPhoto;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    titleController.text;
    contentController.text;
    update();
  }

  getSinglePhoto() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      File file = File(image.path);
      gettedPhoto = file;
      update();
    } else {
      // User canceled the picker
    }
  }

  postBlog() async {
    var response = await repository.postArticle(
        titleController.text, contentController.text, gettedPhoto, token!);
    Fluttertoast.showToast(msg: response!.meta!.message!);
    if (response.meta?.code == 200) {
      Get.offAll(() => const HomePage());
    }
  }
}
