import 'package:aspirationasia/model/user/user_response.dart';
import 'package:aspirationasia/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final UserRepository _repository = UserRepository();

  LoginCubit() : super(InitialLoginState());

  void login(final Map<String, dynamic> loginData) async {
    emit(LoadingLoginState());
    UserResponse response =
        await _repository.login(loginData["username"], loginData["password"]);
    if (response.statusCode == true) {
      emit(SuccessLoginState());
    } else {
      emit(FailureLoginState(response.message));
    }
  }
}
