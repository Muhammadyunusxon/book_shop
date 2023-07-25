abstract class AppValidators {
  AppValidators._();

  static String? isValidEmail(String? email) {
    if (email?.isEmpty ?? true) {
      return "Field required";
    }
    final check = RegExp(
      "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$",
    ).hasMatch(email ?? "");
    return check == false ? "Email incorrect" : null;
  }

  static String? isNotEmptyValidator(String? title) {
    if (title?.isEmpty ?? true) {
      return "Field required";
    }
    return null;
  }

  static String? isValidPassword(String? password) {
    if (password?.isEmpty ?? true) {
      return "Field required";
    } else if ((password?.length ?? 0) < 5) {
      return "Field 5";
    }
    return null;
  }

  static String? isValidConfirmPassword(
      String password, String? confirmPassword) {
    if (confirmPassword?.isEmpty ?? true) {
      return "Field required";
    } else if (confirmPassword != password) {
      return "incorrect";
    }
    return null;
  }
}
