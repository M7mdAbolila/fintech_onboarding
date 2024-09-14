import 'package:fintech_onboarding/onboarding/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/theme/colors.dart';

class NextButton extends StatefulWidget {
  const NextButton({
    super.key,
    required this.pageController,
    required this.isLastScreen,
  });

  final PageController pageController;
  final bool isLastScreen;

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50.h,
      child: ElevatedButton(
        onPressed: () {
          if (widget.isLastScreen) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          } else {
            widget.pageController.nextPage(
              duration: const Duration(
                milliseconds: 700,
              ),
              curve: Curves.easeIn,
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.mainBlue,
        ),
        child: SizedBox(
          width: 300.w,
          height: 55.h,
          child: Center(
            child: Text(
              'Next',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 460.h,
      child: SmoothPageIndicator(
        controller: pageController,
        count: 3,
        effect: const ExpandingDotsEffect(
          activeDotColor: AppColors.mainBlue,
        ),
      ),
    );
  }
}
