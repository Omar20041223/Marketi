import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
class LoginViewHeader extends StatelessWidget {
  const LoginViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: CustomButton(
              text: "Skip",
              textStyle: AppStyles.textStyle16W600LightBlue,
              backgroundColor: Colors.white,
              border:
              Border.all(color: Color(0xffB2CCFF).withValues(alpha: .7)),
              width: 60,
              height: 44,
            )),
        22.verticalSpace,
        Image.asset(
          AppImages.logoImage,
          width: 272.w,
          height: 232.h,
        ),
      ],
    );
  }
}
