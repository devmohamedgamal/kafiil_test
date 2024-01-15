import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mohamed_gamal_sabri/core/utils/custom_text_form_field.dart';
import '../../../../../core/functions/date_format.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_btn.dart';
import 'custom_salary_widget.dart';
import 'favourite_social_media.dart';
import 'ginder_widget.dart';
import 'loading_regsiter_widet.dart';
import 'profile_circel_vatar.dart';
import 'register_error_message.dart';

class CompleteRegisterViewBody extends StatefulWidget {
  const CompleteRegisterViewBody({super.key});

  @override
  State<CompleteRegisterViewBody> createState() =>
      _CompleteRegisterViewBodyState();
}

class _CompleteRegisterViewBodyState extends State<CompleteRegisterViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isError = false;
  DateTime selectedDate = DateTime.now();
  DateTime? newSelectedDate;
  late TextEditingController dateController, aboutController;
  late FocusNode dateFocusNode, aboutFocusNode;

  @override
  void initState() {
    dateController = TextEditingController();
    aboutController = TextEditingController();

    dateFocusNode = FocusNode();
    aboutFocusNode = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    dateController.dispose();
    aboutController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      child: Form(
        key: formKey,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(Icons.arrow_back_ios)),
                    const Text(
                      'Register',
                      style: Styles.style18,
                    ),
                  ],
                ),
                Visibility(
                  visible: isError,
                  child: const RegisterErrorMessage(),
                ),
                SizedBox(
                  height: 50.h,
                ),
                const LoadingRegisterWidget(
                  complete: 2,
                ),
                SizedBox(
                  height: 43.h,
                ),
                const ProfileCircelAvatar(),
                SizedBox(
                  height: 37.h,
                ),
                const CustomTextFormField(
                  hint: 'About',
                  maxLines: 5,
                ),
                SizedBox(
                  height: 37.h,
                ),
                const CustomSalaryWidget(),
                SizedBox(
                  height: 37.h,
                ),
                CustomTextFormField(
                  controller: dateController,
                  hint: 'Birth Date',
                  suffixIcon: IconButton(
                      onPressed: () async {
                        newSelectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1970),
                          lastDate: DateTime.now(),
                        );
                        if (newSelectedDate == null) return;
                        dateController.text =
                            dateToString(date: newSelectedDate!);
                        setState(() => selectedDate = newSelectedDate!);
                      },
                      icon: const Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.grey,
                      )),
                ),
                SizedBox(
                  height: 37.h,
                ),
                const GinderWidget(),
                SizedBox(
                  height: 37.h,
                ),
                const SkillsWidget(),
                SizedBox(
                  height: 37.h,
                ),
                const FavouriteSocialMedia(),
                SizedBox(
                  height: 60.h,
                ),
                CustomBtn(
                  text: 'Submit',
                  width: double.infinity,
                  height: 56.h,
                  backgroundColor: AppConstants.kPrimaryColor,
                  onTap: () {},
                ),
                SizedBox(
                  height: 60.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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
