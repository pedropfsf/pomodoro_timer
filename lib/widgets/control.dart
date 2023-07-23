import 'package:flutter/material.dart';
import 'package:pomodoro_timer/widgets/button_play.dart';
import 'package:pomodoro_timer/widgets/button_replay.dart';

class Control extends StatelessWidget {
  const Control({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonReplay(),
        SizedBox(width: 24),
        ButtonPlay(),
      ],
    );
  }
}
