import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mohamed_gamal_sabri/core/utils/app_router.dart';
import 'package:mohamed_gamal_sabri/core/widgets/custom_btn.dart';
import 'package:mohamed_gamal_sabri/features/Auth/presentation/views/widgets/register_error_message.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/custom_text_form_field.dart';
import '../../../../../core/utils/my_validators.dart';
import '../../../../../core/utils/styles.dart';
import 'loading_regsiter_widet.dart';
import 'register_user_type.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
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

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isError = false;

  @override
  void initState() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();

    firstNameFocusNode = FocusNode();
    lastNameFocusNode = FocusNode();
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    confirmPasswordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  complete: 1,
                ),
                SizedBox(
                  height: 50.h,
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
                CustomTextFormField(
                  hint: 'Confirm Password',
                  controller: confirmPasswordController,
                  focusNode: confirmPasswordFocusNode,
                  validator: (value) {
                    return MyValidators.repeatPasswordValidator(
                      value: value,
                      context: context,
                      password: passwordController.text,
                    );
                  },
                ),
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: const Text(
                    'User Type',
                    style: Styles.style12,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                const RegisterUserType(),
                SizedBox(
                  height: 60.h,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CustomBtn(
                    text: 'Next',
                    width: 160.w,
                    height: 56.h,
                    backgroundColor: AppConstants.kPrimaryColor,
                    onTap: () {
                      var isValid = formKey.currentState!.validate();
                      if (!isValid) {
                        setState(() {
                          isError = false;
                        });
                        context.push(AppRouter.kCompleteRegisterView);
                      } else {
                        setState(() {
                          isError = true;
                        });
                      }
                    },
                  ),
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
