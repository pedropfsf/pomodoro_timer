import 'package:flutter/material.dart';
import 'package:pomodoro_timer/services/colors.dart';

class ButtonPlay extends StatelessWidget {
  const ButtonPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: IconButton.styleFrom(
        backgroundColor: colors['alpha'],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        padding: const EdgeInsets.all(10),
      ),
      child: Icon(
        Icons.play_arrow,
        color: colors['white'],
        size: 48,
      ),
    );
  }
}
