
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class RegisterErrorMessage extends StatelessWidget {
  const RegisterErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFFFF0ED),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Row(children: [
        const Icon(
          Icons.error_outline,
          color: Color(0xFFF56242),
          size: 24,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          'Fill the required fields',
          style: Styles.style12.copyWith(color: const Color(0xFFF56242)),
        )
      ]),
    );
  }
}