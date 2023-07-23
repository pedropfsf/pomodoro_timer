import 'package:flutter/material.dart';
import 'package:pomodoro_timer/stores/main_store.dart';
import 'package:pomodoro_timer/services/colors.dart';
import 'package:pomodoro_timer/services/timer.dart';

final mainStore = MainStore();

class ButtonTimer extends StatelessWidget {
  ButtonTimer({super.key, this.timer});

  final int? timer;

  final buttonStyle = TextButton.styleFrom(
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

  String getTimer() {
    return getTimerBySeconds(timer);
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: buttonStyle,
      child: Text(getTimer(), style: textStyle),
    );
  }
}
