import 'dart:convert';

import 'package:aspirationasia/model/facebook/facebook_model.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;

class FacebookServices {
  final _facebookLogin = FacebookLogin();

  Future<FacebookModel> loginToFacebook() async {
    final loginResult = await _facebookLogin.logIn(['email']).timeout(Duration(seconds: 40));
    return await _getProfileDetailsAndTokenOfLoggedInFacebookUser(loginResult);
  }

  Future<FacebookModel> _getProfileDetailsAndTokenOfLoggedInFacebookUser(FacebookLoginResult result) async {
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        final graphResponse = await http.get('https://graph.facebook.com/v2.12/me?fields=name,email,picture.height(200)&access_token=$token');
        final Map<String, dynamic> profile = jsonDecode(graphResponse.body);
        return FacebookModel(
          userProfile: profile,
          token: token,
        );
        break;
      case FacebookLoginStatus.cancelledByUser:
        throw 'Cancelled by user';
        break;
      case FacebookLoginStatus.error:
        throw result.errorMessage;
        break;
      default:
        return null;
    }
  }

  Future<bool> checkFacebookLoggedInStatus() async {
    return await _facebookLogin.isLoggedIn;
  }

  Future<void> logoutFromFacebook() async {
    await _facebookLogin.logOut();
  }
}
