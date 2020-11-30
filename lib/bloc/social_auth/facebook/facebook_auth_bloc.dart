

import 'package:aspirationasia/bloc/social_auth/facebook/facebook_auth_event.dart';
import 'package:aspirationasia/bloc/social_auth/facebook/facebook_auth_state.dart';
import 'package:aspirationasia/service/facebook_service/facebook_services.dart';
import 'package:aspirationasia/service/firebase_service/firebase_auth_services.dart';
import 'package:aspirationasia/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FacebookAuthBloc extends Bloc<FacebookAuthEvent, FacebookAuthState>{
  final FacebookServices facebookServices;
  final FirebaseAuthServices firebaseAuthServices;
  final SharedPreferences sharedPreferences;
  FacebookAuthBloc({ @required this.sharedPreferences,
    @required this.firebaseAuthServices,
    @required this.facebookServices}):super(InitialFacebookAuthState());

  @override
  Stream<FacebookAuthState> mapEventToState(FacebookAuthEvent event) async* {
    if (event is LoginWithFacebookAuthEvent) {
      yield* mapLoginWithFacebookAuthEventToState();
    } else if (event is LogoutFromFacebookAuthEvent) {
      yield* mapLogoutFromFacebookAuthEventToState();
    }
  }

  Stream<FacebookAuthState> mapLoginWithFacebookAuthEventToState() async* {
    yield LoadingFacebookAuthState();
    try {
      final facebookModel = await facebookServices.loginToFacebook();
      final authCredential = await firebaseAuthServices.getFacebookCredential(facebookModel.token);
      final userCredential = await firebaseAuthServices.signInWithCredentials(authCredential);
      print('facebook data : ${facebookModel.userProfile}');
     // await sharedPreferences.setBool(Strings.IS_LOGGED_IN, true);
      yield OnSuccessFacebookAuthState(facebookModel: facebookModel, userCredential: userCredential);
    } catch (e) {
      yield OnErrorFacebookAuthState(errorMessage: 'Error: $e');
      print('Error: $e');
    }
  }

  Stream<FacebookAuthState> mapLogoutFromFacebookAuthEventToState() async* {
    yield LoadingFacebookAuthState();
    try {
      await facebookServices.logoutFromFacebook();
      await firebaseAuthServices.logoutFirebase();
      //await sharedPreferences.setBool(Strings.IS_LOGGED_IN, false);
      yield OnSuccessFacebookAuthState();
      yield OnLogoutFacebookAuthState();
    } catch (e) {
      yield OnErrorFacebookAuthState(errorMessage: 'Error: $e');
    }
  }

  
}