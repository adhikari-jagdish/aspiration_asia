import 'package:flutter_bloc/flutter_bloc.dart';

class UsernameChangeBloc extends Bloc<String, bool> {
  UsernameChangeBloc() : super(false);

  @override
  Stream<bool> mapEventToState(String event) async* {
    if (event.isEmpty)
      yield false;
    else
      yield true;
  }
}
