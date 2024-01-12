
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class RegisterUserType extends StatefulWidget {
  const RegisterUserType({super.key});

  @override
  State<RegisterUserType> createState() => _RegisterUserTypeState();
}

class _RegisterUserTypeState extends State<RegisterUserType> {
  int? groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
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
              'Seller',
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
              'Buyer',
              style: Styles.style14.copyWith(color: Colors.black),
            ),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 2,
              groupValue: groupValue,
              onChanged: (dynamic value) {
                setState(() {
                  groupValue = value;
                });
              },
              activeColor: AppConstants.kPrimaryColor,
            ),
            Text(
              'Both',
              style: Styles.style14.copyWith(color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
