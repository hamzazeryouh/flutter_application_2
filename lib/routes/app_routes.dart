import 'package:flutter/material.dart';
import 'package:car_rental/models/car.dart';
import 'package:car_rental/screens/onboarding/onboarding_screen.dart';
import 'package:car_rental/screens/auth/login_screen.dart';
import 'package:car_rental/screens/auth/signup_screen.dart';
import 'package:car_rental/screens/auth/reset_password_screen.dart';
import 'package:car_rental/screens/auth/phone_verification_screen.dart';
import 'package:car_rental/screens/home_screen.dart';
import 'package:car_rental/screens/car/car_details_screen.dart';
import 'package:car_rental/screens/filter/filter_screen.dart';

class AppRoutes {
  static const String onboarding = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String resetPassword = '/reset-password';
  static const String phoneVerification = '/phone-verification';
  static const String home = '/home';
  static const String carDetails = '/car-details';
  static const String filter = '/filter';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case signup:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case resetPassword:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
      case phoneVerification:
        return MaterialPageRoute(builder: (_) => const PhoneVerificationScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case carDetails:
        final car = settings.arguments as Car;
        return MaterialPageRoute(builder: (_) => CarDetailsScreen(car: car));
      case filter:
        return MaterialPageRoute(builder: (_) => const FilterScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}