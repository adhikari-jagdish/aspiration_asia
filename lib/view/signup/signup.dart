import 'package:aspirationasia/bloc/social_auth/auth_toggle_bloc.dart';
import 'package:aspirationasia/bloc/social_auth/facebook/facebook_auth_bloc.dart';
import 'package:aspirationasia/bloc/social_auth/facebook/facebook_auth_event.dart';
import 'package:aspirationasia/bloc/social_auth/facebook/facebook_auth_state.dart';
import 'package:aspirationasia/utils/style/custom_style.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signup extends StatelessWidget {
  static String routeName = "/signup";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocListener<FacebookAuthBloc, FacebookAuthState>(
      listener: (context, facebookAuthState) {
        if (facebookAuthState is OnSuccessFacebookAuthState) {
          BlocProvider.of<AuthToggleBloc>(context)
              .add(facebookAuthState.userCredential.user);
        } else if (facebookAuthState is OnErrorFacebookAuthState) {
          BotToast.closeAllLoading();
          BotToast.showText(
            text: facebookAuthState.errorMessage,
          );
        } else if (facebookAuthState is LoadingFacebookAuthState) {
          BotToast.showLoading();
        }
      },
      child: Scaffold(
        body: Container(
          height: 100.0,
          child: _buildSignInWithFbButton(context),
        ),
      ),
    );
  }

  _buildSignInWithFbButton(BuildContext context) {
    return RaisedButton.icon(
      icon: Icon(
        FontAwesomeIcons.facebookF,
        color: Colors.white,
      ),
      padding: EdgeInsets.only(
        top: 16.0,
        bottom: 16.0,
      ),
      color: Color(0xff38589c),
      onPressed: () {
        BlocProvider.of<FacebookAuthBloc>(context)
            .add(LoginWithFacebookAuthEvent());
      },
      label: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Text(
          'Continue with Facebook',
          style: CustomStyle.whiteTextColor.copyWith(
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
