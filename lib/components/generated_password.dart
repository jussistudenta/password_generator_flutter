import 'package:flutter/material.dart';
import 'package:password_generator_app/state.dart';

class GeneratedPassword extends StatelessWidget {
  const GeneratedPassword({
    super.key,
    required this.appState,
  });

  final AppState appState;

  @override
  Widget build(BuildContext context) {
    return Text(appState.generatedPassword, style: Theme.of(context).textTheme.displaySmall);
  }
}