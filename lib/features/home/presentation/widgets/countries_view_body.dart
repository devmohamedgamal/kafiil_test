import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/styles.dart';
import 'custum_countiers_container.dart';

class CountriesViewBody extends StatelessWidget {
  const CountriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Countries',
                style: Styles.style18,
              ),
              SizedBox(
                height: 32.h,
              ),
              const CustomCountiersContainer(),
            ],
          ),
        ],
      ),
    );
  }
}
