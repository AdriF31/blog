class RegisterModel {
  RegisterModel({
    Meta? meta,
    Data? data,
  }) {
    _meta = meta;
    _data = data;
  }

  RegisterModel.fromJson(dynamic json) {
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Meta? _meta;
  Data? _data;
  RegisterModel copyWith({
    Meta? meta,
    Data? data,
  }) =>
      RegisterModel(
        meta: meta ?? _meta,
        data: data ?? _data,
      );
  Meta? get meta => _meta;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

/// name : "Test"
/// email : "master@gmail.com"
/// username : "test"
/// created_at : "2022-11-08 11:12:08"
/// updated_at : null
class Data {
  Data({
    String? name,
    String? email,
    String? username,
    String? createdAt,
    dynamic updatedAt,
  }) {
    _name = name;
    _email = email;
    _username = username;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Data.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _username = json['username'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _name;
  String? _email;
  String? _username;
  String? _createdAt;
  dynamic _updatedAt;
  Data copyWith({
    String? name,
    String? email,
    String? username,
    String? createdAt,
    dynamic updatedAt,
  }) =>
      Data(
        name: name ?? _name,
        email: email ?? _email,
        username: username ?? _username,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  String? get name => _name;
  String? get email => _email;
  String? get username => _username;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['username'] = _username;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}

/// code : 201
/// status : "success"
/// message : "Registrasi berhasil"
class Meta {
  Meta({
    num? code,
    String? status,
    String? message,
  }) {
    _code = code;
    _status = status;
    _message = message;
  }

  Meta.fromJson(dynamic json) {
    _code = json['code'];
    _status = json['status'];
    _message = json['message'];
  }
  num? _code;
  String? _status;
  String? _message;
  Meta copyWith({
    num? code,
    String? status,
    String? message,
  }) =>
      Meta(
        code: code ?? _code,
        status: status ?? _status,
        message: message ?? _message,
      );
  num? get code => _code;
  String? get status => _status;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['status'] = _status;
    map['message'] = _message;
    return map;
  }
}
