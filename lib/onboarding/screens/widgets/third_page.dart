import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/helpers/spacing.dart';
import 'onboarding_text.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            verticalSpace(100),
            SvgPicture.asset(
              'assets/receive_money.svg',
              height: 260.h,
            ),
            verticalSpace(160),
            const OnboardingText(
              text: 'Receive Money From Anywhere In The World',
            ),
          ],
        ),
      ),
    );
  }
}
