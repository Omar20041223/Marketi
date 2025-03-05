import 'package:ecommerceapp/core/widgets/custom_button.dart';
import 'package:ecommerceapp/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_styles.dart';
class SignUpFields extends StatefulWidget {
  const SignUpFields({super.key});

  @override
  State<SignUpFields> createState() => _SignUpFieldsState();
}

class _SignUpFieldsState extends State<SignUpFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Your Name", style: AppStyles.textStyle12W500DarkBlue,),
        CustomTextFormField(hintText: "Full Name", textInputType: TextInputType.name,iconData: Icons.person,),
        Text("Username", style: AppStyles.textStyle12W500DarkBlue,),
        CustomTextFormField(hintText: "Username", textInputType: TextInputType.name,iconData: Icons.person,),
        Text("Phone Number", style: AppStyles.textStyle12W500DarkBlue,),
        CustomTextFormField(hintText: "Phone Number", textInputType: TextInputType.phone,iconData: Icons.phone_android,),
        Text("Email", style: AppStyles.textStyle12W500DarkBlue,),
        CustomTextFormField(hintText: "Email", textInputType: TextInputType.emailAddress,iconData: Icons.email,),
        Text("Password", style: AppStyles.textStyle12W500DarkBlue,),
        CustomTextFormField(hintText: "Password", textInputType: TextInputType.visiblePassword,iconData: Icons.lock,),
        Text("Confirm Password", style: AppStyles.textStyle12W500DarkBlue,),
        CustomTextFormField(hintText: "Confirm Password", textInputType: TextInputType.visiblePassword,iconData: Icons.lock,),
        14.verticalSpace,
        CustomButton(text: "Sign Up",height: 48,)
      ],
    );
  }
}
