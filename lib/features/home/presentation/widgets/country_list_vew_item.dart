
import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class CountryListViewItem extends StatelessWidget {
  const CountryListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Egypt',
              style: Styles.style12.copyWith(color: Colors.black),
            ),
            Text(
              'Cairo',
              style: Styles.style12.copyWith(color: Colors.black),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 2,
          color: Color(0xFFF2F2F2),
        ),
      ],
    );
  }
}
