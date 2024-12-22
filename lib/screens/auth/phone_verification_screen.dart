import 'package:flutter/material.dart';
import 'package:car_rental/widgets/auth/auth_header.dart';
import 'package:car_rental/widgets/auth/auth_button.dart';
import 'package:car_rental/widgets/auth/phone_input.dart';

class PhoneVerificationScreen extends StatelessWidget {
  const PhoneVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthHeader(
                title: 'Verify your phone number',
                subtitle: 'We have sent an SMS with a code to verify your number',
              ),
              const SizedBox(height: 32),
              const PhoneInput(),
              const SizedBox(height: 24),
              AuthButton(
                label: 'Continue',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}