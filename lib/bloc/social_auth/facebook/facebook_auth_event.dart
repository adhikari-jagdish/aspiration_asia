import 'package:equatable/equatable.dart';

abstract class FacebookAuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AppStarted extends FacebookAuthEvent {
  @override
  String toString() => 'AppStarted';
}

class LoginWithFacebookAuthEvent extends FacebookAuthEvent {

}

class LogoutFromFacebookAuthEvent extends FacebookAuthEvent {
  final bool shouldLogout;

  LogoutFromFacebookAuthEvent({this.shouldLogout = false});

  @override
  List<Object> get props => [shouldLogout];
}
