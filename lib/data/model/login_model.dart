class LoginModel {
  LoginModel({
    Meta? meta,
    Data? data,
  }) {
    _meta = meta;
    _data = data;
  }

  LoginModel.fromJson(dynamic json) {
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Meta? _meta;
  Data? _data;
  LoginModel copyWith({
    Meta? meta,
    Data? data,
  }) =>
      LoginModel(
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

class Data {
  Data({
    String? token,
    User? user,
  }) {
    _token = token;
    _user = user;
  }

  Data.fromJson(dynamic json) {
    _token = json['token'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? _token;
  User? _user;
  Data copyWith({
    String? token,
    User? user,
  }) =>
      Data(
        token: token ?? _token,
        user: user ?? _user,
      );
  String? get token => _token;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }
}

class User {
  User({
    num? id,
    String? name,
    String? email,
    String? createdAt,
    dynamic updatedAt,
    String? username,
    List<Tokens>? tokens,
  }) {
    _id = id;
    _name = name;
    _email = email;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _username = username;
    _tokens = tokens;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _username = json['username'];
    if (json['tokens'] != null) {
      _tokens = [];
      json['tokens'].forEach((v) {
        _tokens?.add(Tokens.fromJson(v));
      });
    }
  }
  num? _id;
  String? _name;
  String? _email;
  String? _createdAt;
  dynamic _updatedAt;
  String? _username;
  List<Tokens>? _tokens;
  User copyWith({
    num? id,
    String? name,
    String? email,
    String? createdAt,
    dynamic updatedAt,
    String? username,
    List<Tokens>? tokens,
  }) =>
      User(
        id: id ?? _id,
        name: name ?? _name,
        email: email ?? _email,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        username: username ?? _username,
        tokens: tokens ?? _tokens,
      );
  num? get id => _id;
  String? get name => _name;
  String? get email => _email;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  String? get username => _username;
  List<Tokens>? get tokens => _tokens;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['username'] = _username;
    if (_tokens != null) {
      map['tokens'] = _tokens?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Tokens {
  Tokens({
    String? id,
    num? userId,
    num? clientId,
    String? name,
    List<dynamic>? scopes,
    bool? revoked,
    String? createdAt,
    String? updatedAt,
    String? expiresAt,
  }) {
    _id = id;
    _userId = userId;
    _clientId = clientId;
    _name = name;
    _scopes = scopes;
    _revoked = revoked;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _expiresAt = expiresAt;
  }

  Tokens.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _clientId = json['client_id'];
    _name = json['name'];
    _revoked = json['revoked'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _expiresAt = json['expires_at'];
  }
  String? _id;
  num? _userId;
  num? _clientId;
  String? _name;
  List<dynamic>? _scopes;
  bool? _revoked;
  String? _createdAt;
  String? _updatedAt;
  String? _expiresAt;
  Tokens copyWith({
    String? id,
    num? userId,
    num? clientId,
    String? name,
    List<dynamic>? scopes,
    bool? revoked,
    String? createdAt,
    String? updatedAt,
    String? expiresAt,
  }) =>
      Tokens(
        id: id ?? _id,
        userId: userId ?? _userId,
        clientId: clientId ?? _clientId,
        name: name ?? _name,
        scopes: scopes ?? _scopes,
        revoked: revoked ?? _revoked,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        expiresAt: expiresAt ?? _expiresAt,
      );
  String? get id => _id;
  num? get userId => _userId;
  num? get clientId => _clientId;
  String? get name => _name;
  List<dynamic>? get scopes => _scopes;
  bool? get revoked => _revoked;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get expiresAt => _expiresAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['client_id'] = _clientId;
    map['name'] = _name;
    if (_scopes != null) {
      map['scopes'] = _scopes?.map((v) => v.toJson()).toList();
    }
    map['revoked'] = _revoked;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['expires_at'] = _expiresAt;
    return map;
  }
}

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
