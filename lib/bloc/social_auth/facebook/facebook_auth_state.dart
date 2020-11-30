import 'package:aspirationasia/model/facebook/facebook_model.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class FacebookAuthState extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialFacebookAuthState extends FacebookAuthState {}

class LoadingFacebookAuthState extends FacebookAuthState {}

class OnSuccessFacebookAuthState extends FacebookAuthState {
  final FacebookModel facebookModel;
  final UserCredential userCredential;

  OnSuccessFacebookAuthState({this.facebookModel, this.userCredential});

  @override
  // TODO: implement props
  List<Object> get props => [facebookModel, userCredential];
}

class OnLogoutFacebookAuthState extends FacebookAuthState {}

class OnErrorFacebookAuthState extends FacebookAuthState {
  final String errorMessage;

  OnErrorFacebookAuthState({@required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
