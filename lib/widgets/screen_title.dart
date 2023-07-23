import 'package:flutter/material.dart';
import 'package:pomodoro_timer/services/colors.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: colors['white'],
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
