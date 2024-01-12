
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class LoadingRegisterWidget extends StatelessWidget {
  const LoadingRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 13.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Register',
                style: Styles.style14.copyWith(
                  color: AppConstants.kPrimaryColor,
                ),
              ),
              const Text('Complete Data'),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            const Expanded(
              child: Divider(
                thickness: 3,
                color: AppConstants.kPrimaryColor,
                height: 2,
              ),
            ),
            Container(
              width: 25,
              height: 25,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(
                  side: BorderSide(width: 2, color: AppConstants.kPrimaryColor),
                ),
              ),
              child: Center(
                child: Text(
                  '1',
                  style: Styles.style12
                      .copyWith(color: AppConstants.kPrimaryColor),
                ),
              ),
            ),
            const Expanded(
              child: Divider(
                thickness: 3,
                color: AppConstants.kTextFieldColor,
                height: 2,
              ),
            ),
            Container(
              width: 25,
              height: 25,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(
                  side:
                      BorderSide(width: 2, color: AppConstants.kTextFieldColor),
                ),
              ),
              child: Center(
                child: Text(
                  '2',
                  style: Styles.style12
                      .copyWith(color: AppConstants.kTextFieldColor),
                ),
              ),
            ),
            const Expanded(
              child: Divider(
                thickness: 3,
                color: AppConstants.kTextFieldColor,
                height: 2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
