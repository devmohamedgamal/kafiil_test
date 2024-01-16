import 'package:flutter/material.dart';

import '../widgets/who_m_i_view_body.dart';

class WhoAmIView extends StatelessWidget {
  const WhoAmIView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: WhoAmIViewBody(),
      ),
    );
  }
}
