import 'package:car_rental/widgets/auth/auth_divider.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/widgets/auth/auth_header.dart';
import 'package:car_rental/widgets/auth/auth_button.dart';
import 'package:car_rental/widgets/auth/auth_input.dart';
import 'package:car_rental/widgets/social_login_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthHeader(title: 'Sign Up'),
              const SizedBox(height: 32),
              const AuthInput(
                hintText: 'Full Name',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              const AuthInput(
                hintText: 'Email Address',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              const AuthInput(
                hintText: 'Password',
                isPassword: true,
              ),
              const SizedBox(height: 24),
              AuthButton(
                label: 'Sign up',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              AuthButton(
                label: 'Login',
                onPressed: () => Navigator.pop(context),
                isOutlined: true,
              ),
              const SizedBox(height: 24),
              const AuthDivider(),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: SocialLoginButton(
                      icon: 'assets/icons/apple.png',
                      label: 'Apple Pay',
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SocialLoginButton(
                      icon: 'assets/icons/google.png',
                      label: 'Google Pay',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}