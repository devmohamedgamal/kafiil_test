import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mohamed_gamal_sabri/core/utils/assets_manger.dart';
import 'package:mohamed_gamal_sabri/core/utils/constants.dart';
import 'package:mohamed_gamal_sabri/core/utils/custom_text_form_field.dart';
import 'package:mohamed_gamal_sabri/core/widgets/custom_btn.dart';
import '../../../../../core/utils/styles.dart';
import 'checkbox_and_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
      child: Column(
        children: [
          const Row(
            children: [
              Icon(Icons.arrow_back_ios),
              Text(
                'Account Login',
                style: Styles.style18,
              ),
            ],
          ),
          SizedBox(
            height: 32.h,
          ),
          Image.asset(
            AssetsManger.loginCuate_1,
            height: 225.h,
          ),
          SizedBox(
            height: 41.h,
          ),
          const CustomTextFormField(
            hint: 'Email Address',
            backgroundColor: Color(0xFFF9F9F9),
          ),
          SizedBox(
            height: 16.h,
          ),
          const CustomTextFormField(
            hint: 'Password',
            backgroundColor: Color(0xFFF9F9F9),
          ),
          SizedBox(
            height: 12.h,
          ),
          const CheckBoxAndText(),
          SizedBox(
            height: 34.h,
          ),
          CustomBtn(
            text: 'Login',
            width: double.infinity,
            height: 56.h,
            backgroundColor: AppConstants.kPrimaryColor,
          ),
          SizedBox(
            height: 24.h,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Don’t have an account ? ',
                  style: Styles.style14.copyWith(
                    color: const Color(0xFF696F79),
                  ),
                ),
                TextSpan(
                  text: 'Register',
                  style: Styles.style14
                      .copyWith(color: AppConstants.kPrimaryColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
