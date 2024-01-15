
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/assets_manger.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_check_box.dart';

class FavouriteSocialMedia extends StatelessWidget {
  const FavouriteSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Favourite SocialMedia',
          style: Styles.style12,
        ),
        SizedBox(
          height: 10.h,
        ),
        const CustomCheckBox(
          title: 'Facbook',
          icon: Icon(
            Icons.facebook,
            color: Colors.blue,
          ),
        ),
        CustomCheckBox(
            title: 'Twitter', icon: SvgPicture.asset(AssetsManger.twitterIcon)),
        CustomCheckBox(
          title: 'LinkedIn',
          icon: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Color(0xff2867B2),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                AssetsManger.linkedInIcon,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
