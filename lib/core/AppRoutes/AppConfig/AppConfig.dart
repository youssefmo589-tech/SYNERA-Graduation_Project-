import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:synera_graduation_project/Features/SignIn/presentation/SignInScreen.dart';
import 'package:synera_graduation_project/core/SplashScreen/SplashScreen.dart';

import '../../../Features/SignUp/presentation/SignUpScreen.dart';
import '../AppRouteName/AppRouteName.dart';

class AppConfig {
  static Route<dynamic>? onGenerativeRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.initial:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case AppRouteName.signUp:
        return MaterialPageRoute(builder: (context) => SignUpScreen());

      case AppRouteName.signIn:
        return MaterialPageRoute(builder: (context) => SignInScreen());
    }
  }
}
