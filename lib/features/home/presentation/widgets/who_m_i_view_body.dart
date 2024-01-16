import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/functions/date_format.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/custom_text_form_field.dart';
import '../../../../core/utils/my_validators.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_btn.dart';
import '../../../Auth/presentation/views/widgets/custom_salary_widget.dart';
import '../../../Auth/presentation/views/widgets/favourite_social_media.dart';
import '../../../Auth/presentation/views/widgets/ginder_widget.dart';
import '../../../Auth/presentation/views/widgets/profile_circel_vatar.dart';
import '../../../Auth/presentation/views/widgets/register_user_type.dart';
import '../../../Auth/presentation/views/widgets/skills_widget.dart';

class WhoAmIViewBody extends StatefulWidget {
  const WhoAmIViewBody({super.key});

  @override
  State<WhoAmIViewBody> createState() => _WhoAmIViewBodyState();
}

class _WhoAmIViewBodyState extends State<WhoAmIViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isError = false;
  DateTime selectedDate = DateTime.now();
  DateTime? newSelectedDate;
  late TextEditingController dateController, aboutController;
  late FocusNode dateFocusNode, aboutFocusNode;
  late TextEditingController firstNameController,
      lastNameController,
      emailController,
      passwordController,
      confirmPasswordController;

  late FocusNode firstNameFocusNode,
      lastNameFocusNode,
      emailFocusNode,
      passwordFocusNode,
      confirmPasswordFocusNode;

  @override
  void initState() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    dateController = TextEditingController();
    aboutController = TextEditingController();

    firstNameFocusNode = FocusNode();
    lastNameFocusNode = FocusNode();
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    confirmPasswordFocusNode = FocusNode();
    dateFocusNode = FocusNode();
    aboutFocusNode = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    dateController.dispose();
    aboutController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Who Am i',
                  style: Styles.style18,
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              const ProfileCircelAvatar(),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomTextFormField(
                    hint: 'First Name',
                    controller: firstNameController,
                    focusNode: firstNameFocusNode,
                    validator: (value) {
                      return MyValidators.displayNamevalidator(
                        value,
                        context,
                      );
                    },
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: CustomTextFormField(
                    hint: 'Last Name',
                    controller: lastNameController,
                    focusNode: lastNameFocusNode,
                    validator: (value) {
                      return MyValidators.displayNamevalidator(
                        value,
                        context,
                      );
                    },
                  )),
                ],
              ),
              SizedBox(height: 30.h),
              CustomTextFormField(
                hint: 'Email Address',
                controller: emailController,
                focusNode: emailFocusNode,
                validator: (value) {
                  return MyValidators.emailValidator(
                    value,
                    context,
                  );
                },
              ),
              SizedBox(height: 30.h),
              CustomTextFormField(
                hint: 'Password',
                controller: passwordController,
                focusNode: passwordFocusNode,
                validator: (value) {
                  return MyValidators.passwordValidator(
                    value,
                    context,
                  );
                },
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'User Type',
                    style: Styles.style12,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              const RegisterUserType(),
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
              const CustomTextFormField(hint: 'Sallary'),
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
    );
  }
}
