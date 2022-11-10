import 'package:blog/base/base_controller.dart';
import 'package:blog/data/model/article_model.dart';
import 'package:blog/data/model/delete_article_model.dart';
import 'package:blog/data/storage_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../auth/login/login_page.dart';

class HomeController extends BaseController {
  ArticleModel? articleModel = ArticleModel();
  DeleteArticleModel? deleteArticleModel = DeleteArticleModel();
  StorageCore storage = StorageCore();
  String? token = StorageCore().getAccessToken();

  @override
  void onInit() {
    super.onInit();
    getArticle(token!);
    update();
  }

  void getArticle(String token) async {
    try {
      var response = await repository.getArticle(token);
      articleModel = response;

      update();
    } catch (e) {
      return null;
    }
  }

  void deleteArticle(int id, String token) async {
    try {
      var response = await repository.deleteArticle(id, token);
      deleteArticleModel = response;

      update();
    } catch (e) {
      return null;
    }
  }

  void logout(String username, String password) async {
    try {
      var response = await repository.postLogout(username, password);
      if (response.meta?.status == 'success') {
        storage.deleteAuthResponse();
        Fluttertoast.showToast(msg: response.meta!.message!);
        Get.offAll(() => const LoginPage());
      } else {
        Fluttertoast.showToast(msg: response.meta!.message!);
      }
    } catch (e) {
      return null;
    }
  }
}
