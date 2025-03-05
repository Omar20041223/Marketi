import 'package:ecommerceapp/features/auth/presentation/views/widgets/login/login_view_body.dart';
import 'package:flutter/material.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: LoginViewBody()),
    );
  }
}
