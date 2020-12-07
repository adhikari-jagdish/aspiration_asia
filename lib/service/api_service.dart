import 'package:aspirationasia/model/user/user_response.dart';
import 'package:dio/dio.dart';

class ApiService {
  final String _loginEndpoint = "192.168.10.33:9000/api/login";
  final Dio _dio = Dio();

  Future<UserResponse> login(String username, String password) async {
    try {
      Response response = await _dio.post(_loginEndpoint,
          data: {"username": username, "password": password});
      return UserResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return UserResponse.withError("$error");
    }
  }
}
