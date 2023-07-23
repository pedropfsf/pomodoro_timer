import 'package:flutter/material.dart';
import 'package:pomodoro_timer/main.dart';
import 'package:pomodoro_timer/utils/colors.dart';
import 'package:pomodoro_timer/utils/timer.dart';
import 'package:pomodoro_timer/widgets/button_arrow.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Observer(builder: (_) {
          return ButtonArrow(
            direction: 'left',
            onPressed: () {
              mainStore.next();
            },
          );
        }),
        TextButton(
          onPressed: () {},
          style: buttonStyle,
          child: Text(getTimer(), style: textStyle),
        ),
        Observer(builder: (_) {
          return ButtonArrow(
            direction: 'right',
            onPressed: () {
              mainStore.back();
            },
          );
        })
      ],
    );
  }
}
