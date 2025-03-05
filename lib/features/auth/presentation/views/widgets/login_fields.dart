import 'package:ecommerceapp/core/utils/app_colors.dart';
import 'package:ecommerceapp/core/utils/app_styles.dart';
import 'package:ecommerceapp/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';

class LoginFields extends StatefulWidget {
  const LoginFields({super.key});

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: Column(
        children: [
          CustomTextFormField(
            hintText: "Username or Email",
            textInputType: TextInputType.emailAddress,
            iconData: Icons.email,
          ),
          14.verticalSpace,
          CustomTextFormField(
            hintText: "Password",
            textInputType: TextInputType.visiblePassword,
            iconData: Icons.lock,
          ),
          Row(
            children: [
              Checkbox(
                value: _isChecked,
                fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                  if (states.contains(WidgetState.selected)) {
                    return AppColors.lightBlue; // When checked, use light blue
                  }
                  return Colors.white; // When unchecked, use white
                }),
                onChanged: (isChecked) {
                  setState(() {
                    _isChecked = isChecked!;
                  });
                },
              ),
              Text("Remember Me",style: AppStyles.textStyle12W400Navy,),
              Spacer(),
              Text("Forgot Password?",style: AppStyles.textStyle12W500LightBlue,)
            ],
          ),
          21.verticalSpace,
          CustomButton(text: "Log In",height: 48,)
        ],
      ),
    );
  }
}
