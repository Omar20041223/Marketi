import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class LoginTail extends StatelessWidget {
  const LoginTail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Or Continue With",
          style: AppStyles.textStyle12W400Navy,
        ),
        16.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildCircleIcon("assets/images/google.png"),
            16.horizontalSpace,
            buildCircleIcon("assets/images/apple.png"),
            16.horizontalSpace,
            buildCircleIcon("assets/images/facebook.png"),
          ],
        ),
        14.verticalSpace,
        Text.rich(
          TextSpan(
            text: "Are you new in Marketi",
            style: AppStyles.textStyle12W400Navy,
            children: [
              TextSpan(
                text: " register?",
                style: AppStyles.textStyle12W500LightBlue,
              )
            ],
          )
        )
      ],
    );
  }

  Widget buildCircleIcon(
    String imagePath,
  ) {
    return Container(
      width: 40.r,
      height: 40.r,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.lightBlue.withValues(alpha: 0.7)),
        shape: BoxShape.circle,
      ),
      child: Center(
          child: Image.asset(
        imagePath,
        fit: BoxFit.scaleDown,
      )),
    );
  }
}
