import 'package:aspirationasia/model/dashboard/dashboard_response.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class DashboardState extends Equatable {
  const DashboardState();

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class InitialDashboardState extends DashboardState {}

class LoadingDashboardState extends DashboardState {}

class SuccessDashboardState extends DashboardState {
  final DashboardResponse dashboardResponse;

  const SuccessDashboardState({@required this.dashboardResponse})
      : assert(dashboardResponse != null);

  @override
  // TODO: implement props
  List<Object> get props => [dashboardResponse];
}

class FailureDashboardState extends DashboardState {
  final String errorMessage;

  FailureDashboardState({this.errorMessage});

  @override
  List<Object> get props => [errorMessage];

  @override
  String toString() {
    return 'FailureDashboardState {errorMessage: $errorMessage}';
  }
}
