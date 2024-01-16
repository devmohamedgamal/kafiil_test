
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class SkillsWidget extends StatefulWidget {
  const SkillsWidget({super.key});

  @override
  State<SkillsWidget> createState() => _SkillsWidgetState();
}

class _SkillsWidgetState extends State<SkillsWidget> {
  List<bool> choicesChipsItems = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  List<String> choicesChips = [
    'Video Production',
    'Full Stack',
    'Flutter',
    'Graphic Design',
    'Front end',
    'Backend',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Skills',
          style: Styles.style12,
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppConstants.kTextFieldColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Wrap(
            children: List.generate(
              choicesChips.length,
              (i) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: FilterChip(
                  label: Text(choicesChips[i]),
                  labelStyle: const TextStyle(
                    color: AppConstants.kPrimaryColor,
                  ),
                  selectedColor: const Color(0xFFE9F9F1),
                  onSelected: (t) {
                    setState(() {
                      choicesChipsItems[i] = !choicesChipsItems[i];
                    });
                  },
                  selected: choicesChipsItems[i],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
