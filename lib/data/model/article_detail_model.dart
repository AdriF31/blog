
class ArticleDetailModel {
  Meta? meta;
  Data? data;

  ArticleDetailModel({this.meta, this.data});

  ArticleDetailModel.fromJson(Map<String, dynamic> json) {
    meta = json["meta"] == null ? null : Meta.fromJson(json["meta"]);
    data = json["data"] == null ? null : Data.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(meta != null) {
      _data["meta"] = meta?.toJson();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  String? title;
  String? content;
  String? image;
  String? author;
  String? createdAt;

  Data({this.title, this.content, this.image, this.author, this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    content = json["content"];
    image = json["image"];
    author = json["author"];
    createdAt = json["created_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["title"] = title;
    _data["content"] = content;
    _data["image"] = image;
    _data["author"] = author;
    _data["created_at"] = createdAt;
    return _data;
  }
}

class Meta {
  int? code;
  String? status;
  String? message;

  Meta({this.code, this.status, this.message});

  Meta.fromJson(Map<String, dynamic> json) {
    code = json["code"];
    status = json["status"];
    message = json["message"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["code"] = code;
    _data["status"] = status;
    _data["message"] = message;
    return _data;
  }
}