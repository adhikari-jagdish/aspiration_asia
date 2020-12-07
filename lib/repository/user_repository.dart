import 'package:aspirationasia/model/user/user_response.dart';
import 'package:aspirationasia/service/api_service.dart';

class UserRepository {
  ApiService _apiService = ApiService();

  Future<UserResponse> login(String username, String password) {
    return _apiService.login(username, password);
  }
}
