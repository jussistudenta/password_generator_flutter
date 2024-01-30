import 'package:flutter/material.dart';
import 'package:password_generator/password_generator.dart';

class AppState extends ChangeNotifier {
  String generatedPassword = "";
  bool? passwordHasCapitalLetters = false;
  TextEditingController passwordLengthController =
      TextEditingController(text: "10");
  List<String> passwordRules = [
    "hasCapitalLetters",
    "hasSmallLetters",
    "hasNumbers",
    "hasSymbols"
  ];
  bool passwordIsTooShort = false;
  bool passwordLengthIsNotSpecified = false;

  void generatePassword() {
    passwordIsTooShort = false;
    passwordLengthIsNotSpecified = false;

    if (passwordLengthController.text == "") {
      passwordLengthIsNotSpecified = true;
      notifyListeners();
      return;
    }

    int passwordLength = int.parse(passwordLengthController.text);

    if (passwordLength < 3) {
      passwordIsTooShort = true;
      notifyListeners();
      return;
    }

    if (passwordLength > 0) {
      generatedPassword = PasswordGenerator(
        length: passwordLength,
        hasCapitalLetters: passwordRules.contains("hasCapitalLetters"),
        hasNumbers: passwordRules.contains("hasNumbers"),
        hasSmallLetters: passwordRules.contains("hasSmallLetters"),
        hasSymbols: passwordRules.contains("hasSymbols"),
      ).generatePassword();
    }

    notifyListeners();
  }

  void togglePasswordHasCapitalLetters(bool? value) {
    passwordHasCapitalLetters = value;

    notifyListeners();
  }

  void togglePasswordRule(String rule) {
    if (passwordRules.contains(rule)) {
      // Don't allow user to remove all password rules because there must be at least one
      // password rule in order to generate the password.
      if (passwordRules.length == 1) {
        notifyListeners();
        return;
      }
      passwordRules.remove(rule);
    } else {
      passwordRules.add(rule);
    }

    notifyListeners();
  }
}
