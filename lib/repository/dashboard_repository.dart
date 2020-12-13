import 'package:aspirationasia/model/dashboard/dashboard_response.dart';
import 'package:aspirationasia/service/api_service.dart';

class DashboardRepository {
  ApiService _apiService = ApiService();

  Future<DashboardResponse> getDashboardItems() async {
    return await _apiService.getDashboardItems();
  }
}
