import 'package:fintech_onboarding/onboarding/screens/widgets/first_page.dart';
import 'package:fintech_onboarding/onboarding/screens/widgets/second_page.dart';
import 'package:fintech_onboarding/onboarding/screens/widgets/third_page.dart';
import 'package:flutter/material.dart';

import 'widgets/next_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  bool isLastScreen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (page) {
              setState(() {
                isLastScreen = (page == 2);
              });
            },
            children: const [
              FirstPage(),
              SecondPage(),
              ThirdPage(),
            ],
          ),
          PageIndicator(pageController: pageController),
          NextButton(
            pageController: pageController,
            isLastScreen: isLastScreen,
          ),
        ],
      ),
    );
  }
}
