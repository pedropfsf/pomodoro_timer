import 'package:flutter/material.dart';
import 'package:pomodoro_timer/widgets/mode_options.dart';
import 'package:pomodoro_timer/widgets/screen_title.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const ScreenTitle(text: 'Pomodoro Timer'),
      const SizedBox(height: 8),
      ModeOptions(),
    ]);
  }
}
