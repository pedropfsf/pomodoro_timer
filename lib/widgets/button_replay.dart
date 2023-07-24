import 'package:flutter/material.dart';
import 'package:pomodoro_timer/services/colors.dart';

class ButtonReplay extends StatelessWidget {
  const ButtonReplay({super.key, this.onReplay});

  final Function()? onReplay;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onReplay,
      iconSize: 48,
      icon: Icon(
        Icons.replay,
        color: colors['white'],
      ),
    );
  }
}
