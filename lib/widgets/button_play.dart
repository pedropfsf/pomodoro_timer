import 'package:flutter/material.dart';
import 'package:pomodoro_timer/utils/colors.dart';

class ButtonPlay extends StatelessWidget {
  ButtonPlay({super.key, this.timer});

  final int? timer;

  final buttonStyle = OutlinedButton.styleFrom(
    foregroundColor: colors['white'],
    side: BorderSide(color: colors['alpha']!),
    minimumSize: const Size(200, 200),
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
    return OutlinedButton(
      onPressed: () {},
      style: buttonStyle,
      child: Text('00:00', style: textStyle),
    );
  }
}