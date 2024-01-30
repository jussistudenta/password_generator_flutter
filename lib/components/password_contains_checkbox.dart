import 'package:flutter/material.dart';
import 'package:password_generator_app/helpers/show_alert_dialog.dart';

import '../state.dart';

class PasswordContainsCheckbox extends StatelessWidget {
  const PasswordContainsCheckbox({
    super.key,
    required this.appState,
    required this.labelText,
    required this.passwordRule,
  });

  final AppState appState;
  final String labelText;
  final String passwordRule;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Checkbox(
            value: appState.passwordRules.contains(passwordRule),
            onChanged: (value) {
              if (value == false && appState.passwordRules.length == 1) {
                showAlertDialog(context);
              } else {
                appState.togglePasswordRule(passwordRule);
              }
            }),
        Text(labelText, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
