import 'package:flutter/material.dart';

import 'widgets/login_view_body.dart';

class LoginViw extends StatelessWidget {
  const LoginViw({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: LoginViewBody()),
    );
  }
}
