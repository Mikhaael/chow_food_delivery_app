import 'package:chow_food_delivery_app/screens/login_screen.dart';
import 'package:chow_food_delivery_app/screens/onboarding_screen.dart';
import 'package:chow_food_delivery_app/screens/register_screen.dart';
import 'package:chow_food_delivery_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static const String splash = "/";
  static const String onboarding = "/onborading";
  static const String login = "/login";
  static const String register = "register";

  static Map<String, Widget Function(BuildContext)> routes = {
    splash: (context) => const SplashScreen(),
    onboarding: (context) => const OnboardingScreen(),
    login: (context) => const LoginScreen(),
    register: (context) => const RegisterScreen(),
  };
}