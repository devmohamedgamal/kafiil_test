
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class GinderWidget extends StatefulWidget {
  const GinderWidget({super.key});

  @override
  State<GinderWidget> createState() => _GinderWidgetState();
}

class _GinderWidgetState extends State<GinderWidget> {
  int? groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Gender',
          style: Styles.style12,
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Radio(
                  value: 0,
                  groupValue: groupValue,
                  onChanged: (dynamic value) {
                    setState(() {
                      groupValue = value;
                    });
                  },
                  activeColor: AppConstants.kPrimaryColor,
                ),
                Text(
                  'Male',
                  style: Styles.style14.copyWith(color: Colors.black),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: groupValue,
                  onChanged: (dynamic value) {
                    setState(() {
                      groupValue = value;
                    });
                  },
                  activeColor: AppConstants.kPrimaryColor,
                ),
                Text(
                  'Female',
                  style: Styles.style14.copyWith(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
