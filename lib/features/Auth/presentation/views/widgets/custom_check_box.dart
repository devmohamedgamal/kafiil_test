
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key, required this.title, this.icon});
  final String title;
  final Widget? icon;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isCheck,
            onChanged: (val) {
              setState(() {
                isCheck = val!;
              });
            }),
        widget.icon ?? Container(),
        const SizedBox(
          width: 10,
        ),
        Text(
          widget.title,
          style: Styles.style14.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
