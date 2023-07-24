import 'package:flutter/material.dart';
import 'package:pomodoro_timer/services/colors.dart';

class ButtonPlay extends StatelessWidget {
  const ButtonPlay({
    super.key,
    this.isPause,
    this.onPlay,
  });

  final bool? isPause;
  final Function()? onPlay;

  IconData getIcon() {
    if (isPause == null) {
      return Icons.play_arrow;
    }

    if (isPause == true) {
      return Icons.play_arrow;
    }

    return Icons.pause;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPlay,
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
        getIcon(),
        color: colors['white'],
        size: 48,
      ),
    );
  }
}
