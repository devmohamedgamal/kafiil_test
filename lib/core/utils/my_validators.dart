import 'package:flutter/Material.dart';

class MyValidators {
  static String? displayNamevalidator(
      String? displayName, BuildContext context) {
    if (displayName == null || displayName.isEmpty) {
      return '';
    }
    if (displayName.length < 3 || displayName.length > 20) {
      return '';
    }

    return null; // Return null if display name is valid
  }

  static String? emailValidator(String? value, BuildContext context) {
    if (value!.isEmpty) {
      return '';
    }
    if (!RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
        .hasMatch(value)) {
      return '';
    }
    return null;
  }

  static String? passwordValidator(String? value, BuildContext context) {
    if (value!.isEmpty) {
      return '';
    }
    if (value.length < 6) {
      return '';
    }
    return null;
  }

  static String? validateMobile(String value, BuildContext context) {
// Indian Mobile number are of 11 digit only
    if (value.length <= 10) {
      return '';
    } else {
      return null;
    }
  }

  static String? repeatPasswordValidator(
      {String? value, String? password, required BuildContext context}) {
    if (value != password) {
      return '';
    }
    return null;
  }
}
