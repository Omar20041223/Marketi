import 'package:ecommerceapp/core/utils/app_images.dart';
import 'package:ecommerceapp/core/widgets/back_icon.dart';
import 'package:flutter/material.dart';
class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackIcon(),
        Image.asset(AppImages.logoImage)
      ],
    );
  }
}
