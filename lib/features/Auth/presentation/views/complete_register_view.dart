import 'package:flutter/material.dart';

import 'widgets/complete_register_view_body.dart';

class CompleteRegisterView extends StatelessWidget {
  const CompleteRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: CompleteRegisterViewBody()),
    );
  }
}
