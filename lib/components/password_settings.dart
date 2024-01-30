import 'package:flutter/material.dart';
import 'package:password_generator_app/state.dart';

import 'password_contains_checkbox.dart';
import 'password_length_input.dart';

class PasswordSettings extends StatelessWidget {
  const PasswordSettings({
    super.key,
    required this.appState,
  });

  final AppState appState;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PasswordLengthInput(appState: appState),
        const Divider(),
        Text('Password contains:',
            style: Theme.of(context).textTheme.headlineSmall),
        Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            PasswordContainsCheckbox(
              appState: appState,
              labelText: "capital letters",
              passwordRule: "hasCapitalLetters",
            ),
            PasswordContainsCheckbox(
              appState: appState,
              labelText: "small letters",
              passwordRule: "hasSmallLetters",
            ),
            PasswordContainsCheckbox(
              appState: appState,
              labelText: "numbers",
              passwordRule: "hasNumbers",
            ),
            PasswordContainsCheckbox(
              appState: appState,
              labelText: "symbols",
              passwordRule: "hasSymbols",
            ),
          ],
        ),
      ],
    );
  }
}
