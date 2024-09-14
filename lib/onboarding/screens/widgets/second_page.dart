import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/helpers/spacing.dart';
import 'onboarding_text.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            verticalSpace(100),
            SvgPicture.asset(
              'assets/track.svg',
              height: 260.h,
            ),
            verticalSpace(160),
            const OnboardingText(
              text: 'Spend money abroad, and track your expense',
            ),
          ],
        ),
      ),
    );
  }
}
