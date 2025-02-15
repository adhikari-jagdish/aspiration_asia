import 'package:aspirationasia/bloc/dashboard/dashboard_cubit.dart';
import 'package:aspirationasia/bloc/login/form/password_change_bloc.dart';
import 'package:aspirationasia/bloc/login/form/username_change_bloc.dart';
import 'package:aspirationasia/utils/route_constants.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bloc/social_auth/auth_toggle_bloc.dart';
import 'bloc/social_auth/facebook/facebook_auth_bloc.dart';
import 'routes/routes.dart';
import 'service/facebook_service/facebook_services.dart';
import 'service/firebase_service/firebase_auth_services.dart';
import 'utils/strings.dart';
import 'view/splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AspirationAsiaRoot extends StatelessWidget {
  final SharedPreferences sharedPreferences;
  final FacebookServices _facebookServices = FacebookServices();
  final FirebaseAuthServices _firebaseAuthServices = FirebaseAuthServices();

  AspirationAsiaRoot({this.sharedPreferences});

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => FacebookAuthBloc(
            sharedPreferences: sharedPreferences,
            firebaseAuthServices: _firebaseAuthServices,
            facebookServices: _facebookServices,
          ),
        ),
        BlocProvider(
          create: (_) => AuthToggleBloc(),
        ),
        BlocProvider(
          create: (_) => UsernameChangeBloc(),
        ),
        BlocProvider(
          create: (_) => PasswordChangeBloc(),
        ),
        BlocProvider(
          create: (_) => DashboardCubit(),
        ),
      ],
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => sharedPreferences,
          ),
          RepositoryProvider(
            create: (context) => _firebaseAuthServices,
          ),
          RepositoryProvider(
            create: (context) => _facebookServices,
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: generateRoute,
          initialRoute: RouteConstants.routeInitial,
          title: Strings.APP_NAME,
          theme: ThemeData(
              primarySwatch: Colors.teal,
              fontFamily: 'Poppins'),
          builder: BotToastInit(),
          navigatorObservers: [BotToastNavigatorObserver()],
        ),
      ),
    );
  }
}
