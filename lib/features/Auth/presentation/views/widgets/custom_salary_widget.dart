
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomSalaryWidget extends StatefulWidget {
  const CustomSalaryWidget({super.key});

  @override
  State<CustomSalaryWidget> createState() => _CustomSalaryWidgetState();
}

class _CustomSalaryWidgetState extends State<CustomSalaryWidget> {
  int salary = 1000;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Salary",
          style: Styles.style12,
        ),
        SizedBox(
          height: 16.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 41.w, vertical: 16.h),
          decoration: BoxDecoration(
            color: AppConstants.kTextFieldColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  if (salary != 0) {
                    setState(() {
                      salary -= 100;
                    });
                  }
                },
                child: Container(
                  height: 25.h,
                  width: 25.w,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.remove,
                      color: AppConstants.kPrimaryColor,
                    ),
                  ),
                ),
              ),
              Text(
                'SAR $salary',
                style: Styles.style16,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    salary += 100;
                  });
                },
                child: Container(
                  height: 25.h,
                  width: 25.w,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      color: AppConstants.kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
