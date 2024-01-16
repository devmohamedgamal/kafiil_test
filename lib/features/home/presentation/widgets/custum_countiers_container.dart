import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mohamed_gamal_sabri/core/utils/assets_manger.dart';

import '../../../../core/utils/styles.dart';
import 'country_list_vew_item.dart';

class CustomCountiersContainer extends StatelessWidget {
  const CustomCountiersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 400.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            shadows: const [
              BoxShadow(
                color: Color(0x19202020),
                blurRadius: 40,
                offset: Offset(0, 4),
                spreadRadius: -5,
              )
            ],
          ),
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                width: double.infinity,
                height: 40,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF9F9F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Country',
                      style: Styles.style12,
                    ),
                    Text(
                      'Capital',
                      style: Styles.style12,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CountryListViewItem(),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        const CustomCounterWidget(),
      ],
    );
  }
}

class CustomCounterWidget extends StatelessWidget {
  const CustomCounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 32.h,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: 32,
            height: 32,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border:
                    Border.all(width: 1.50, color: const Color(0xFFE6EAEF))),
            child: Center(child: SvgPicture.asset(AssetsManger.firstIcon)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: 32,
            height: 32,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border:
                    Border.all(width: 1.50, color: const Color(0xFFE6EAEF))),
            child: Center(child: SvgPicture.asset(AssetsManger.backIcon)),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                          width: 1.50, color: const Color(0xFFE6EAEF))),
                  child: Center(child: Text("${index + 1}")),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: 32,
            height: 32,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border:
                    Border.all(width: 1.50, color: const Color(0xFFE6EAEF))),
            child: Center(child: SvgPicture.asset(AssetsManger.nextIcon)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: 32,
            height: 32,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border:
                    Border.all(width: 1.50, color: const Color(0xFFE6EAEF))),
            child: Center(child: SvgPicture.asset(AssetsManger.lastIcon)),
          ),
        ],
      ),
    );
  }
}
