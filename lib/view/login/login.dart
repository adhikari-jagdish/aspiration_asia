import 'package:aspirationasia/bloc/login/form/password_change_bloc.dart';
import 'package:aspirationasia/bloc/login/form/username_change_bloc.dart';
import 'package:aspirationasia/utils/animation/FadeAnimation.dart';
import 'package:aspirationasia/utils/custom_colour.dart';
import 'package:aspirationasia/utils/route_constants.dart';
import 'package:aspirationasia/view/components/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Login extends StatefulWidget {
  static String routeName = "/login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          _resetAllBlocState(context);
          return true;
        },
        child: Scaffold(
          body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                  CustomColor.welcomeBgColor,
                  CustomColor.welcomeTextColor,
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 80.0),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                          1,
                          Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white, fontSize: 40.0),
                          )),
                      SizedBox(height: 10.0),
                      FadeAnimation(
                          1.3,
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                                color: Colors.white, fontSize: 18.0),
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60.0),
                            topRight: Radius.circular(60.0))),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 60.0),
                            FadeAnimation(
                              1.4,
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                              225, 95, 27, .3),
                                          blurRadius: 20,
                                          offset: Offset(0, 10.0))
                                    ]),
                                child: FormBuilder(
                                  key: _formKey,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey[200]))),
                                        child:
                                        BlocBuilder<UsernameChangeBloc, bool>(
                                          builder: (context, userNameState) {
                                            return CustomTextField(
                                              filledColor: userNameState
                                                  ? CustomColor
                                                  .fieldFilledActiveColor
                                                  : CustomColor
                                                  .fieldFilledInitialColor,
                                              onChange: (val) {
                                                BlocProvider.of<
                                                    UsernameChangeBloc>(
                                                    context)
                                                    .add(val);
                                              },
                                              validators: [
                                                FormBuilderValidators.required(
                                                    errorText:
                                                    'Username is required.')
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey[200]))),
                                        child:
                                        BlocBuilder<PasswordChangeBloc, bool>(
                                          builder: (context, passwordState) {
                                            return CustomTextField(
                                              filledColor: passwordState
                                                  ? CustomColor
                                                  .fieldFilledActiveColor
                                                  : CustomColor
                                                  .fieldFilledInitialColor,
                                              onChange: (val) {
                                                BlocProvider.of<
                                                    PasswordChangeBloc>(
                                                    context)
                                                    .add(val);
                                              },
                                              validators: [
                                                FormBuilderValidators.required(
                                                    errorText:
                                                    'Password is required.')
                                              ],
                                            );
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            FadeAnimation(
                                1.5,
                                Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      color: Colors.grey[800], fontSize: 16.0),
                                )),
                            SizedBox(height: 40),
                            FadeAnimation(
                              1.6,
                              InkWell(
                                child: Container(
                                  height: 50.0,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 50.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: CustomColor.welcomeBgColor),
                                  child: Center(
                                    child: Text("Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0)),
                                  ),
                                ),
                                onTap: () {
                                  if (_formKey.currentState.saveAndValidate()) {
                                    print(_formKey.currentState.value);
                                    Navigator.pushNamed(context, RouteConstants.routeHome);
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }

  _resetAllBlocState(BuildContext context) {
    BlocProvider.of<UsernameChangeBloc>(context).add('');
    BlocProvider.of<PasswordChangeBloc>(context).add('');
  }
}
