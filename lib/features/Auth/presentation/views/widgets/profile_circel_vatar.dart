import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/assets_manger.dart';
import '../../../../../core/utils/constants.dart';

class ProfileCircelAvatar extends StatelessWidget {
  const ProfileCircelAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: CircleAvatar(
            backgroundColor: AppConstants.kPrimaryColor,
            child: SvgPicture.asset(
              AssetsManger.profile,
              height: 100,
              width: 100,
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: () {
              //TODO pic the image from mobile
            },
            child: Container(
              height: 25.h,
              width: 25.w,
              decoration: const BoxDecoration(
                color: AppConstants.kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
