import 'package:ecommerceapp/features/auth/presentation/views/widgets/login/login_tail.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/signUp/sign_up_fields.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/signUp/sign_up_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.0.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            8.verticalSpace,
            SignUpHeader(),
            SignUpFields(),
            12.verticalSpace,
            LoginTail(isSignUp: true,)
          ],
        ),
      ),
    );
  }
}
