import 'dart:io';

import 'package:blog/base/base_controller.dart';
import 'package:blog/data/model/article_detail_model.dart';
import 'package:blog/data/storage_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../home/home_page.dart';

class UpdateArticleController extends BaseController {
  ArticleDetailModel? articleDetailModel = ArticleDetailModel();
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
    _getArticleDetail(Get.arguments, token!);
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

  void _getArticleDetail(String id, String token) async {
    try {
      print(Get.arguments);
      var response = await repository.getArticleDetail(id, token);
      articleDetailModel = response;
      print(articleDetailModel);
      update();
    } catch (e) {
      return null;
    }
  }

  updateBlog() async {
    var response = await repository.postUpdateArticle(Get.arguments,
        titleController.text, contentController.text, gettedPhoto, token!);
    Fluttertoast.showToast(msg: response!.meta!.message!);
    if (response.meta?.code == 200) {
      Get.offAll(() => const HomePage());
    }
  }
}
