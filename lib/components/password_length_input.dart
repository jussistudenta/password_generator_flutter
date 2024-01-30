import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:password_generator_app/state.dart';

import 'error_message.dart';

class PasswordLengthInput extends StatelessWidget {
  const PasswordLengthInput({
    super.key,
    required this.appState,
  });

  final AppState appState;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text('Password length:', style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(width: 5),
            SizedBox(
              width: 50,
              child: TextFormField(
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                controller: appState.passwordLengthController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
          ],
        ),
        appState.passwordIsTooShort
            ? const ErrorMessage(
                errorMessage: 'Password length must be at least 3 characters!')
            : const SizedBox.shrink(),
      ],
    );
  }
}
