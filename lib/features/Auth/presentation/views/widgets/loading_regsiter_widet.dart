import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class LoadingRegisterWidget extends StatelessWidget {
  const LoadingRegisterWidget({super.key, required this.complete});
  final int complete;

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
              Text(
                'Complete Data',
                style: complete == 2
                    ? Styles.style14.copyWith(
                        color: AppConstants.kPrimaryColor,
                      )
                    : null,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
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
              decoration: complete == 2
                  ? const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppConstants.kPrimaryColor,
                    )
                  : const ShapeDecoration(
                      color: Colors.white,
                      shape: OvalBorder(
                        side: BorderSide(
                            width: 2, color: AppConstants.kPrimaryColor),
                      ),
                    ),
              child: Center(
                child: complete == 2
                    ? const Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 16,
                      )
                    : Text(
                        '1',
                        style: Styles.style12
                            .copyWith(color: AppConstants.kPrimaryColor),
                      ),
              ),
            ),
            Expanded(
              child: Divider(
                thickness: 3,
                color: complete == 2
                    ? AppConstants.kPrimaryColor
                    : AppConstants.kTextFieldColor,
                height: 2,
              ),
            ),
            Container(
              width: 25,
              height: 25,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(
                  side: BorderSide(
                    width: 2,
                    color: complete == 2
                        ? AppConstants.kPrimaryColor
                        : AppConstants.kTextFieldColor,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  '2',
                  style: Styles.style12.copyWith(
                    color: complete == 2
                        ? AppConstants.kPrimaryColor
                        : AppConstants.kTextFieldColor,
                  ),
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
