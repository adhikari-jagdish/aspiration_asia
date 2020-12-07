class UserResponse {
  String token;
  bool statusCode;
  String message;
  List<Data> data;

  UserResponse({this.token, this.statusCode, this.message, this.data});

  UserResponse.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    statusCode = json['statusCode'];
    message = json['message'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  UserResponse.withError(String errorValue);
}

class Data {
  String sId;
  String username;
  String name;
  String email;

  Data({this.sId, this.username, this.name, this.email});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    username = json['username'];
    name = json['name'];
    email = json['email'];
  }
}
