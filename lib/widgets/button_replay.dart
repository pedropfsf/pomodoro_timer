import 'package:flutter/material.dart';
import 'package:pomodoro_timer/services/colors.dart';

class ButtonReplay extends StatelessWidget {
  const ButtonReplay({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      iconSize: 48,
      icon: Icon(
        Icons.replay,
        color: colors['white'],
      ),
    );
  }
}
