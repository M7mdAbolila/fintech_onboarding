import 'package:fintech_onboarding/onboarding/screens/widgets/onboarding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/helpers/spacing.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            verticalSpace(100),
            SvgPicture.asset(
              'assets/trust.svg',
              height: 260.h,
            ),
            verticalSpace(160),
            const OnboardingText(
              text: 'Trusted by millions of people, part of one part',
            ),
          ],
        ),
      ),
    );
  }
}
