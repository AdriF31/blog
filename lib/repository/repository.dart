import 'dart:async';
import 'dart:io';

import 'package:blog/data/model/article_detail_model.dart';
import 'package:blog/data/model/article_model.dart';
import 'package:blog/data/model/create_article_model.dart';
import 'package:blog/data/model/delete_article_model.dart';
import 'package:blog/data/model/login_model.dart';
import 'package:blog/data/model/register_model.dart';

import '../data/model/logout_model.dart';

abstract class Repository {
  FutureOr<LoginModel> postLogin(String username, String password);
  FutureOr<RegisterModel> postRegister(
      String name, String email, String username, String password);
  FutureOr<LogoutModel> postLogout(String username, String password);
  FutureOr<ArticleModel?> getArticle(String token);
  FutureOr<ArticleDetailModel?> getArticleDetail(String id, String token);
  FutureOr<CreateArticleModel?> postArticle(
      String title, String content, File? image, String token);
  FutureOr<DeleteArticleModel?> deleteArticle(int id, String token);
  FutureOr<CreateArticleModel?> postUpdateArticle(String id,
      String title, String content, File? image, String token);
}
