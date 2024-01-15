import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants.dart';
import 'styles.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.controller,
    this.focusNode,
    this.textInputAction,
    this.keyboardType,
    this.validator,
    this.onFieldSubmitted,
    this.maxLines = 1,
    this.backgroundColor = AppConstants.kTextFieldColor, this.suffixIcon,
  });
  final String hint;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final int maxLines;
  final Color backgroundColor;
  final Widget? suffixIcon;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            widget.hint,
            style: Styles.style12,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        TextFormField(
          controller: widget.controller,
          obscureText: widget.hint.contains('Password') ? showPassword : false,
          focusNode: widget.focusNode,
          textInputAction: widget.textInputAction,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          onFieldSubmitted: widget.onFieldSubmitted,
          maxLines: widget.maxLines,
          decoration: InputDecoration(
            fillColor: widget.backgroundColor,
            filled: true,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(21.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(21.r),
            ),
            contentPadding: const EdgeInsets.all(17),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Theme.of(context).colorScheme.error,
              ),
              borderRadius: BorderRadius.circular(30.sp),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Theme.of(context).colorScheme.error,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            suffixIcon: widget.hint.contains('Password')
                ? IconButton(
                    onPressed: () {
                      if (showPassword) {
                        setState(() {
                          showPassword = false;
                        });
                      } else {
                        setState(() {
                          showPassword = true;
                        });
                      }
                    },
                    icon: Icon(
                      showPassword ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                  )
                : widget.suffixIcon,
          ),
        ),
      ],
    );
  }
}
