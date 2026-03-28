import 'package:flutter/material.dart';
import 'package:netflix_app/login/signin/auth_wrapper.dart';
import 'package:netflix_app/login/signin/create_or_login.dart';
import 'package:netflix_app/login/signin/signin.dart';
import 'package:netflix_app/screens/splash_sceen.dart';
import 'package:netflix_app/navigation/navigation_screen.dart';

class AppRoutes {
  static const authwrapper = '/authwraper';
  static const splash = '/';
  static const login = '/login';
  static const signin = '/signin';
  static const home = '/home';

  static final Map<String, WidgetBuilder> routes = {
    authwrapper: (context) => const AuthWrapper(),
    splash: (context) => const Splashscreen(),
    login: (context) => const CreateOrLogin(),
    signin: (context) => const Signin(),
    home: (context) => const Navigationscreen(),
  };
}