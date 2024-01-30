import 'package:flutter/material.dart';
import 'package:password_generator_app/state.dart';
import 'package:provider/provider.dart';

import 'generate_password_button.dart';
import 'generated_password.dart';
import 'password_settings.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    return Scaffold(
      backgroundColor: Colors.black87,
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Password generator', textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayMedium),
            const SizedBox(height: 5),
            const Divider(),
            PasswordSettings(appState: appState),
            const Divider(),
            // Show generated password only if user has generated one. This code will hide
            // the generated password when the user starts the app and show it only after
            // a password is generated.
            appState.generatedPassword != ""
                ? Text('Generated password:', style: Theme.of(context).textTheme.bodyLarge)
                : const SizedBox.shrink(),
            GeneratedPassword(appState: appState),
            appState.generatedPassword != ""
                ? const SizedBox(
                    height: 20,
                  )
                : const SizedBox.shrink(),
            GeneratePasswordButton(appState: appState),
          ],
        ),
      ),
    ));
  }
}
