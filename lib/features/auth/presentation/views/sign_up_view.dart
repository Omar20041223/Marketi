import 'package:ecommerceapp/features/auth/presentation/views/widgets/signUp/sign_up_view_body.dart';
import 'package:flutter/material.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SignUpViewBody()),
    );
  }
}
