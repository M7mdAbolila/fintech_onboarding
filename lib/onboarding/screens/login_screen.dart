import 'package:fintech_onboarding/onboarding/screens/widgets/onboarding_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: OnboardingText(text: 'Welcome'),
      ),
    );
  }
}
