import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthToggleBloc extends Bloc<User, User> {
  AuthToggleBloc() : super(null);

  @override
  Stream<User> mapEventToState(User event) async* {
    yield event;
  }
}
