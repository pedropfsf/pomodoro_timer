import 'package:flutter/material.dart';
import 'package:pomodoro_timer/stores/main_store.dart';
import 'package:pomodoro_timer/services/colors.dart';

final mainStore = MainStore();

class ButtonTimer extends StatelessWidget {
  ButtonTimer({
    super.key,
    required this.text,
  });

  final String text;

  final buttonStyle = TextButton.styleFrom(
    foregroundColor: colors['white'],
    side: BorderSide(color: colors['alpha']!),
    minimumSize: const Size(270, 270),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(150),
    ),
    padding: const EdgeInsets.all(32),
  );

  final textStyle = const TextStyle(
    fontSize: 58,
  );

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: buttonStyle,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
