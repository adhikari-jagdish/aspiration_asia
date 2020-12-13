import 'package:aspirationasia/model/dashboard/dashboard_response.dart';
import 'package:aspirationasia/model/user/user_response.dart';
import 'package:aspirationasia/utils/service_constants.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  ///Login
  Future<UserResponse> login(String username, String password) async {
    try {
      Response response = await _dio.post(BASE_URL + API_LOGIN,
          data: {"username": username, "password": password});
      return UserResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred in Login: $error stackTrace: $stacktrace");
      return UserResponse.withError("$error");
    }
  }

  ///Dashboard
  Future<DashboardResponse> getDashboardItems() async {
    try {
      List<Response> response = await Future.wait([
        _dio.get(BASE_URL + API_CAROUSEL),
        _dio.get(BASE_URL + API_SERVICES)
      ]);
      return DashboardResponse(
          carouselResponse: CarouselResponse.fromJson(response[0].data),
          serviceResponse: ServiceResponse.fromJson(response[1].data));
    } catch (error, stacktrace) {
      print("Exception occurred in Dashboard: $error stackTrace: $stacktrace");
      return DashboardResponse.withError("$error");
    }
  }
}
