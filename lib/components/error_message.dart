import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
    required this.errorMessage,
  });

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.redAccent,
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Text(errorMessage,
              style: const TextStyle(color: Colors.white)),
        ),
      );
  }
}