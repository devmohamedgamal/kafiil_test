import 'package:flutter/material.dart';

import 'widgets/register_viwe_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: RegisterViewBody()),
    );
  }
}
