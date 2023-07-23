import 'package:flutter/material.dart';
import 'package:pomodoro_timer/widgets/button_play.dart';
import 'package:pomodoro_timer/widgets/button_replay.dart';

class Control extends StatelessWidget {
  const Control({super.key, this.isPause, this.onPlay});

  final bool? isPause;
  final Function()? onPlay;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ButtonReplay(),
        const SizedBox(width: 24),
        ButtonPlay(isPause: isPause, onPlay: onPlay),
      ],
    );
  }
}
