import 'package:aspirationasia/bloc/dashboard/dashboard_state.dart';
import 'package:aspirationasia/model/dashboard/dashboard_response.dart';
import 'package:aspirationasia/repository/dashboard_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final DashboardRepository dashboardRepository = DashboardRepository();

  DashboardCubit() : super(InitialDashboardState()) {
    getDashboardItems();
  }

  void getDashboardItems() async {
    emit(LoadingDashboardState());
    DashboardResponse response = await dashboardRepository.getDashboardItems();
    if (response.carouselResponse.statusCode == true) {
      emit(SuccessDashboardState(dashboardResponse: response));
    } else {
      emit(FailureDashboardState(
          errorMessage: response.carouselResponse.message));
    }
  }
}
