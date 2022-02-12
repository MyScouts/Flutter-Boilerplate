import 'package:get/get.dart';

class AuthValidator {
  AuthValidator();
  static String? email(String? value) {
    if (value == '' || value == null) {
      return 'please_enter_your_email_address'.tr;
    } else if (!GetUtils.isEmail(value)) {
      return 'please_enter_a_valid_email_address'.tr;
    }
    return null;
  }

  static String? password(String? value) {
    // final length = value?.runes.length;
    if (value == '' || value == null) {
      return 'please_enter_your_password'.tr;
    } else if (value.length < 6) {
      return 'please_enter_the_password_with_at_least_6_characters'.tr;
    }
    return null;
  }

  static String? nickName(String? value) {
    if (value == '' || value == null) {
      return 'please_enter_a_nickname'.tr;
    }

    return null;
  }

  static String? emailConfirm(String? value, String? email) {
    if (value == '' || value == null) {
      return 'please_enter_your_email_address_confirmation'.tr;
    } else if (value != email) {
      return 'the_input_contents_are_different'.tr;
    }
    return null;
  }

  static String? passwordConfirm(String? value, String? password) {
    if (value == '' || value == null) {
      return 'please_enter_the_password_for_confirmation'.tr;
    } else if (value != password) {
      return 'the_input_contents_are_different'.tr;
    }
    return null;
  }
}
