import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordChangeBloc extends Bloc<String, bool> {
  PasswordChangeBloc() : super(false);

  @override
  Stream<bool> mapEventToState(String event) async* {
    if (event.isEmpty)
      yield false;
    else
      yield true;
  }
}
