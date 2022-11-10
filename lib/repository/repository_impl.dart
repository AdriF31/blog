import 'dart:async';
import 'dart:io';

import 'package:blog/data/model/article_model.dart';
import 'package:blog/data/model/article_detail_model.dart';
import 'package:blog/data/model/create_article_model.dart';
import 'package:blog/data/model/delete_article_model.dart';
import 'package:blog/data/model/login_model.dart';
import 'package:blog/data/model/logout_model.dart';
import 'package:blog/data/model/register_model.dart';
import 'package:blog/repository/repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide FormData, MultipartFile;
import '../data/network_core.dart';

class RepositoryImpl implements Repository {
  final network = Get.find<NetworkCore>();

  @override
  FutureOr<LoginModel> postLogin(String username, String password) async {
    try {
      var response = await network.dio.post("/login",
          data: {"username": username, "password": password},
          options: Options(headers: {"Accept": "application/json"}));
      return LoginModel.fromJson(response.data);
    } on DioError catch (e) {
      return LoginModel.fromJson(e.response?.data);
    }
  }

  @override
  Future<RegisterModel> postRegister(
      String name, String email, String username, String password) async {
    try {
      var response = await network.dio.post("/register",
          data: {
            "name": name,
            "email": email,
            "username": username,
            "password": password
          },
          options: Options(headers: {"Accept": "application/json"}));

      return RegisterModel.fromJson(response.data);
    } on DioError catch (e) {
      return RegisterModel.fromJson(e.response?.data);
    }
  }

  @override
  FutureOr<ArticleModel?> getArticle(String token) async {
    try {
      var response = await network.dio.get('/post',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return ArticleModel.fromJson(response.data);
    } on DioError catch (e) {
      return ArticleModel.fromJson(e.response?.data ?? '');
    }
  }

  @override
  FutureOr<ArticleDetailModel?> getArticleDetail(
      String id, String token) async {
    try {
      var response = await network.dio.get('/post/$id',
          options: Options(headers: {
            'accept': 'application/json',
            'Authorization': 'Bearer $token'
          }));
      return ArticleDetailModel.fromJson(response.data);
    } on DioError {
      return null;
    }
  }

  @override
  FutureOr<CreateArticleModel?> postArticle(
      String title, String content, File? image, String token) async {
    try {
      var formData = FormData.fromMap({
        "title": title,
        "content": content,
      });

      if (image != null) {
        formData.files.addAll(
            [MapEntry("image", await MultipartFile.fromFile(image.path))]);
      }

      var response = await network.dio.post("/post",
          data: formData,
          options: Options(headers: {
            "Authorization": "Bearer $token",
            "Accept": "application/json",
            "Content-Type": "multipart/form-data"
          }));
      return CreateArticleModel.fromJson(response.data);
    } on DioError {
      return null;
    }
  }

  @override
  FutureOr<DeleteArticleModel?> deleteArticle(int id, String token) async {
    try {
      var response = await network.dio.delete('/post/$id',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return DeleteArticleModel.fromJson(response.data);
    } on DioError {
      return null;
    }
  }

  @override
  FutureOr<LogoutModel> postLogout(String username, String password) async {
    try {
      var response = await network.dio.post("/logout",
          data: {"username": username, "password": password},
          options: Options(headers: {"Accept": "application/json"}));
      return LogoutModel.fromJson(response.data);
    } on DioError catch (e) {
      return LogoutModel.fromJson(e.response?.data);
    }
  }

  @override
  FutureOr<CreateArticleModel?> postUpdateArticle(String id, String title,
      String content, File? image, String token) async {
    try {
      var formData = FormData.fromMap({
        "title": title,
        "content": content,
      });

      if (image != null) {
        formData.files.addAll(
            [MapEntry("image", await MultipartFile.fromFile(image.path))]);
      }

      var response = await network.dio.post("/post/$id",
          data: formData,
          options: Options(headers: {
            "Authorization": "Bearer $token",
            "Accept": "application/json",
            "Content-Type": "multipart/form-data"
          }));
      return CreateArticleModel.fromJson(response.data);
    } on DioError {
      return null;
    }
  }
}
