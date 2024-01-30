import 'package:flutter/material.dart';
import 'package:password_generator_app/state.dart';

class GeneratePasswordButton extends StatelessWidget {
  const GeneratePasswordButton({
    super.key,
    required this.appState,
  });

  final AppState appState;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          appState.generatePassword();
        },
        child: const Text('Generate password'));
  }
}