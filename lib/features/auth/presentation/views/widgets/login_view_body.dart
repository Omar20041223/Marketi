import 'package:ecommerceapp/features/auth/presentation/views/widgets/login_fields.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/login_tail.dart';
import 'package:ecommerceapp/features/auth/presentation/views/widgets/login_view_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            LoginViewHeader(),
            32.verticalSpace,
            LoginFields(),
            14.verticalSpace,
            LoginTail()
          ],
        ),
      ),
    );
  }
}
