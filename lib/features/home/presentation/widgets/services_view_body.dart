import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mohamed_gamal_sabri/core/utils/assets_manger.dart';

import '../../../../core/utils/styles.dart';

class ServicesViewBody extends StatelessWidget {
  const ServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24, top: 50.h, bottom: 50.h),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Services',
                style: Styles.style18,
              ),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                height: 192.h,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const ServicesListViewItem();
                  },
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              const Text(
                'Popular Services',
                style: Styles.style18,
              ),
              SizedBox(
                height: 34.h,
              ),
              SizedBox(
                height: 192.h,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const ServicesListViewItem();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServicesListViewItem extends StatelessWidget {
  const ServicesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157.w,
      height: 192.h,
      padding: const EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(children: [
            Image.asset(AssetsManger.productImage),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                width: 60.w,
                height: 26.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFF1DBF73),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                ),
                child: Center(
                  child: Text(
                    '\$100',
                    style: Styles.style12.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 10.h,
          ),
          const SizedBox(
            width: 136,
            height: 37,
            child: Text(
              'Logo Design - Graphic Design Graphic Design',
              style: Styles.style12,
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                size: 20,
                color: Colors.yellow,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '(4.5)',
                style: Styles.style12.copyWith(color: Colors.yellow),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 13,
                width: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 5,
              ),
              SvgPicture.asset(AssetsManger.shopingCartIcon),
              const SizedBox(
                width: 5,
              ),
              const Text(
                '20',
                style: Styles.style12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
