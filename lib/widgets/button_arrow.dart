import 'package:flutter/material.dart';
import 'package:pomodoro_timer/utils/colors.dart';

class ButtonArrow extends StatelessWidget {
  ButtonArrow({super.key, this.direction, this.onPressed});

  final String? direction;
  final Function()? onPressed;

  final style = IconButton.styleFrom(
    backgroundColor: colors['alpha'],
    padding: const EdgeInsets.all(0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    minimumSize: const Size(0, 100),
  );

  getIcon(String? direction) {
    if (direction == 'right') {
      return Icons.arrow_right;
    }

    return Icons.arrow_left;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: style,
      child: Icon(
        getIcon(direction),
        size: 64,
        color: colors['white'],
      ),
    );
  }
}
