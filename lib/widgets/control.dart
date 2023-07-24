import 'package:flutter/material.dart';
import 'package:pomodoro_timer/widgets/button_play.dart';
import 'package:pomodoro_timer/widgets/button_replay.dart';

class Control extends StatelessWidget {
  const Control({super.key, this.isPause, this.onPlay, this.onReplay});

  final bool? isPause;
  final Function()? onPlay;
  final Function()? onReplay;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonReplay(onReplay: onReplay),
        const SizedBox(width: 24),
        ButtonPlay(isPause: isPause, onPlay: onPlay),
      ],
    );
  }
}
