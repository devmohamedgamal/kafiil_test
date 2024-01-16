import 'package:flutter/material.dart';

import '../widgets/countries_view_body.dart';

class CountriesView extends StatelessWidget {
  const CountriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CountriesViewBody(),
    );
  }
}