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

/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiOWE0MWNiMTNhOThhYjAwOWE0NTA2N2U5MWZkZDY5ZDNiNWE0YWY3YmY5ZTc3MTg4MjhhMjBhMTBiZTlhMGQ4OWMwMWQxNmY4ZDFiNzUyNGYiLCJpYXQiOjE2Njc5MTA2OTIuNjQ3Nzg5LCJuYmYiOjE2Njc5MTA2OTIuNjQ3Nzk0LCJleHAiOjE2OTk0NDY2OTIuNjQ2MjU5LCJzdWIiOiIxOCIsInNjb3BlcyI6W119.Hd3BT-94k_V-vf1qTi8h-3q4rIN6pyjfz_r-9pZjRcMZjTWSztwggAyFL0FuBLy_hNDs1KOguB4_BJqnlM2uM9BqXCapYRPyzhJXBHj9DNdZfsk0bGn78lxix7QMlMkKj_YsJxYWAiu9iGL9FPlCmut-8qjns7VLpVDM6Xj6dEDlD3HmTLUxASQUotVjmxjTXV9cCe00lw86qiUnU3HhIkW-Ipqu_pG7wnQHcPOCaDTkVQOjyfKx3P-RGFdryIRsRDKl5Q_JeBdIsSLLHmpBFjNfX-xCVjSt1phDTt7Tf81eaUiw81mC3wynPVvWpIPsMcQx4FR3R40GKkpEf_Zp5eKPIEKrRFD_85WfEwXpLj2z7MGDYZ-Z_1glDajIBSX8bUnQf8OG2D8Rj6r7Dls_wQy4yhZYM6dj4r0cKCHJAcjd7nxDt4pkJPZtdkY9fDY1PkQX1JTIxB1eSpVyxV-aPHjeSodJuw11jyFeAUfzqFedeDC-I18GiM7Cesdn9gkU4sz2XGjKBDSS9yjzuIxtRAT5VuPIZLRoa-FwUax4le-be_7i5zxL92vloj1lNi25Xhixgk51GglGsBHxyqivNmK92xgT5iw8Czl6QNWwUJ5Q1R7EPDUvOo2XV6q4a7uVEKQKCUJaVyGDan5M0a9GSF8ntvpcQcZhi05WViJRorw"
/// user : {"id":18,"name":"Ari Maulana","email":"maul@gmail.com","created_at":"2022-11-08T11:37:32.000000Z","updated_at":null,"username":"maul","tokens":[{"id":"44924a03f6cd3045ecca749a76b338595c9a387b21d0a3cf07c3656dbc0385170c718d955e8f3223","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":false,"created_at":"2022-11-08 19:31:06","updated_at":"2022-11-08 19:31:06","expires_at":"2023-11-08T12:31:06.000000Z"},{"id":"c199f57f0985481c28d11db5e2ade83efa99b89c9b6eb9d522d7e859f96df4bd8cf07e2b6b8df534","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:29:26","updated_at":"2022-11-08 19:29:26","expires_at":"2023-11-08T12:29:26.000000Z"},{"id":"c3e7d99fa8ff33e9d931c0dd48af5fab6f00479363a520a00ad2928b7b7da669ca22d3a496e68b67","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:29:12","updated_at":"2022-11-08 19:29:12","expires_at":"2023-11-08T12:29:12.000000Z"},{"id":"01de262ef69263145314a04289e6eb55d2bd26d04793ff9c1402b9fcb2577c644ad6c850ff6ebc00","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:28:17","updated_at":"2022-11-08 19:28:17","expires_at":"2023-11-08T12:28:17.000000Z"},{"id":"e8cbac91bc796caa5fb06caa44af3fa8c8730e5f038d1c341b28dc2b7475993a02344428e9d7482c","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:25:07","updated_at":"2022-11-08 19:25:07","expires_at":"2023-11-08T12:25:07.000000Z"},{"id":"dae21f144dbea06790a20e0cb529e8873dffb25ccf6270ba0edfb6d0a9128866bd07ad533eea9f7e","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:22:24","updated_at":"2022-11-08 19:22:24","expires_at":"2023-11-08T12:22:24.000000Z"},{"id":"17bc131c4af751289dcc7f18d903b21b372eaf716af0650441a584ba88f0460439f0da98f769ea42","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:21:56","updated_at":"2022-11-08 19:21:56","expires_at":"2023-11-08T12:21:56.000000Z"},{"id":"704386cd371a4c92e409de3f3a240e43b4d0b8f9ce8e0655f247d70d0b59a8fda6c4827556ce7c24","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:21:45","updated_at":"2022-11-08 19:21:45","expires_at":"2023-11-08T12:21:45.000000Z"},{"id":"0e07035d98caec16b3974535c481ac24869d0d785171aa881848f48a17f05ca437a40e3c8b02f8ed","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:21:25","updated_at":"2022-11-08 19:21:25","expires_at":"2023-11-08T12:21:25.000000Z"},{"id":"0b08e7ca86e009a2d7527124da87373ebc9f67baf003f6163b3c4511cb63eab6255f09f886ec72a3","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:20:10","updated_at":"2022-11-08 19:20:10","expires_at":"2023-11-08T12:20:10.000000Z"},{"id":"403455052116abb8e820e35afc7e8aa0d019049eb65eb2f85626af976a8a18f68156f7302a58c15a","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:18:55","updated_at":"2022-11-08 19:18:55","expires_at":"2023-11-08T12:18:55.000000Z"},{"id":"1821c41c99016e59a91c79cb476e37cc639cf38cc0f7b2fdc67d704073f6e7588cd07568483bf4f7","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:17:16","updated_at":"2022-11-08 19:17:16","expires_at":"2023-11-08T12:17:16.000000Z"},{"id":"025e43417e52fea9d3af430e07d735f92bbb7da12c7bf471d2f01a6d8ee6f5ba3278516a151dc16c","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:02:39","updated_at":"2022-11-08 19:02:39","expires_at":"2023-11-08T12:02:39.000000Z"},{"id":"a08e7eaf15f1741611aacb503076d06e875f392379e4a5167b9fa27358d8d63cc319c2b71ce397a9","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:00:48","updated_at":"2022-11-08 19:00:48","expires_at":"2023-11-08T12:00:48.000000Z"},{"id":"fbd1417f9ced090fee542d9a8694457937b9e15f3a3036b6eb0f11bacff66aefa3500d3b2bbbf814","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 18:59:39","updated_at":"2022-11-08 18:59:39","expires_at":"2023-11-08T11:59:39.000000Z"},{"id":"f716deba1febe53088e0c2d2157a970b4406b20f533be10a2ac4a6052ed66d77c0c35a89830c9c01","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 18:43:37","updated_at":"2022-11-08 18:43:37","expires_at":"2023-11-08T11:43:37.000000Z"},{"id":"68701ce31e7e95cb6428fa96c75e2bf089191ca08e61d4748111f4d5dd3f05309f84b28525881396","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 18:42:04","updated_at":"2022-11-08 18:42:04","expires_at":"2023-11-08T11:42:04.000000Z"},{"id":"030d87e1b7af549a21339e69a55e60bebfae4437f5564c3e0b450733cba183961e54ce93a9171309","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 18:39:05","updated_at":"2022-11-08 18:39:05","expires_at":"2023-11-08T11:39:05.000000Z"}]}
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

/// id : 18
/// name : "Ari Maulana"
/// email : "maul@gmail.com"
/// created_at : "2022-11-08T11:37:32.000000Z"
/// updated_at : null
/// username : "maul"
/// tokens : [{"id":"44924a03f6cd3045ecca749a76b338595c9a387b21d0a3cf07c3656dbc0385170c718d955e8f3223","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":false,"created_at":"2022-11-08 19:31:06","updated_at":"2022-11-08 19:31:06","expires_at":"2023-11-08T12:31:06.000000Z"},{"id":"c199f57f0985481c28d11db5e2ade83efa99b89c9b6eb9d522d7e859f96df4bd8cf07e2b6b8df534","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:29:26","updated_at":"2022-11-08 19:29:26","expires_at":"2023-11-08T12:29:26.000000Z"},{"id":"c3e7d99fa8ff33e9d931c0dd48af5fab6f00479363a520a00ad2928b7b7da669ca22d3a496e68b67","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:29:12","updated_at":"2022-11-08 19:29:12","expires_at":"2023-11-08T12:29:12.000000Z"},{"id":"01de262ef69263145314a04289e6eb55d2bd26d04793ff9c1402b9fcb2577c644ad6c850ff6ebc00","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:28:17","updated_at":"2022-11-08 19:28:17","expires_at":"2023-11-08T12:28:17.000000Z"},{"id":"e8cbac91bc796caa5fb06caa44af3fa8c8730e5f038d1c341b28dc2b7475993a02344428e9d7482c","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:25:07","updated_at":"2022-11-08 19:25:07","expires_at":"2023-11-08T12:25:07.000000Z"},{"id":"dae21f144dbea06790a20e0cb529e8873dffb25ccf6270ba0edfb6d0a9128866bd07ad533eea9f7e","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:22:24","updated_at":"2022-11-08 19:22:24","expires_at":"2023-11-08T12:22:24.000000Z"},{"id":"17bc131c4af751289dcc7f18d903b21b372eaf716af0650441a584ba88f0460439f0da98f769ea42","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:21:56","updated_at":"2022-11-08 19:21:56","expires_at":"2023-11-08T12:21:56.000000Z"},{"id":"704386cd371a4c92e409de3f3a240e43b4d0b8f9ce8e0655f247d70d0b59a8fda6c4827556ce7c24","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:21:45","updated_at":"2022-11-08 19:21:45","expires_at":"2023-11-08T12:21:45.000000Z"},{"id":"0e07035d98caec16b3974535c481ac24869d0d785171aa881848f48a17f05ca437a40e3c8b02f8ed","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:21:25","updated_at":"2022-11-08 19:21:25","expires_at":"2023-11-08T12:21:25.000000Z"},{"id":"0b08e7ca86e009a2d7527124da87373ebc9f67baf003f6163b3c4511cb63eab6255f09f886ec72a3","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:20:10","updated_at":"2022-11-08 19:20:10","expires_at":"2023-11-08T12:20:10.000000Z"},{"id":"403455052116abb8e820e35afc7e8aa0d019049eb65eb2f85626af976a8a18f68156f7302a58c15a","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:18:55","updated_at":"2022-11-08 19:18:55","expires_at":"2023-11-08T12:18:55.000000Z"},{"id":"1821c41c99016e59a91c79cb476e37cc639cf38cc0f7b2fdc67d704073f6e7588cd07568483bf4f7","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:17:16","updated_at":"2022-11-08 19:17:16","expires_at":"2023-11-08T12:17:16.000000Z"},{"id":"025e43417e52fea9d3af430e07d735f92bbb7da12c7bf471d2f01a6d8ee6f5ba3278516a151dc16c","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:02:39","updated_at":"2022-11-08 19:02:39","expires_at":"2023-11-08T12:02:39.000000Z"},{"id":"a08e7eaf15f1741611aacb503076d06e875f392379e4a5167b9fa27358d8d63cc319c2b71ce397a9","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 19:00:48","updated_at":"2022-11-08 19:00:48","expires_at":"2023-11-08T12:00:48.000000Z"},{"id":"fbd1417f9ced090fee542d9a8694457937b9e15f3a3036b6eb0f11bacff66aefa3500d3b2bbbf814","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 18:59:39","updated_at":"2022-11-08 18:59:39","expires_at":"2023-11-08T11:59:39.000000Z"},{"id":"f716deba1febe53088e0c2d2157a970b4406b20f533be10a2ac4a6052ed66d77c0c35a89830c9c01","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 18:43:37","updated_at":"2022-11-08 18:43:37","expires_at":"2023-11-08T11:43:37.000000Z"},{"id":"68701ce31e7e95cb6428fa96c75e2bf089191ca08e61d4748111f4d5dd3f05309f84b28525881396","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 18:42:04","updated_at":"2022-11-08 18:42:04","expires_at":"2023-11-08T11:42:04.000000Z"},{"id":"030d87e1b7af549a21339e69a55e60bebfae4437f5564c3e0b450733cba183961e54ce93a9171309","user_id":18,"client_id":1,"name":"API Token","scopes":[],"revoked":true,"created_at":"2022-11-08 18:39:05","updated_at":"2022-11-08 18:39:05","expires_at":"2023-11-08T11:39:05.000000Z"}]
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

/// id : "44924a03f6cd3045ecca749a76b338595c9a387b21d0a3cf07c3656dbc0385170c718d955e8f3223"
/// user_id : 18
/// client_id : 1
/// name : "API Token"
/// scopes : []
/// revoked : false
/// created_at : "2022-11-08 19:31:06"
/// updated_at : "2022-11-08 19:31:06"
/// expires_at : "2023-11-08T12:31:06.000000Z"
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

/// code : 200
/// status : "success"
/// message : "Login berhasil"
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
