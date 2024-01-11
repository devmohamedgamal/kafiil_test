import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class CheckBoxAndText extends StatefulWidget {
  const CheckBoxAndText({super.key});

  @override
  State<CheckBoxAndText> createState() => _CheckBoxAndTextState();
}

class _CheckBoxAndTextState extends State<CheckBoxAndText> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: isCheck,
              onChanged: (value) {
                setState(() {
                  isCheck = value!;
                });
              },
              activeColor: AppConstants.kPrimaryColor,
            ),
            const Text(
              'Remember me',
              style: Styles.style12,
            ),
          ],
        ),
        const Text(
          'Forgot Password?',
          style: Styles.style12,
        ),
      ],
    );
  }
}
