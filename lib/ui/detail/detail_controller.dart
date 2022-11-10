import 'package:blog/base/base_controller.dart';
import 'package:blog/data/model/article_detail_model.dart';
import 'package:get/get.dart';

import '../../data/storage_core.dart';

class DetailController extends BaseController {
  ArticleDetailModel? articleDetailModel = ArticleDetailModel();

  String? token = StorageCore().getAccessToken();

  @override
  void onInit() {
    
    super.onInit();
    _getArticleDetail(Get.arguments, token ?? '');
    update();
  }

  void _getArticleDetail(String id, String token) async {
    try {
      var response = await repository.getArticleDetail(id, token);
      articleDetailModel = response;
      update();
    } catch (e) {
      return null;
    }
  }
}
