import 'package:flutter/material.dart';
import 'package:pomodoro_timer/utils/ways.dart';
import 'package:pomodoro_timer/widgets/button_play.dart';
import 'package:pomodoro_timer/widgets/screen_container.dart';
import 'package:pomodoro_timer/widgets/screen_title.dart';

main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      color: FocusMode().color,
      children: [
        const ScreenTitle(text: 'Pomodoro Timer'),
        ButtonPlay(timer: FocusMode().timer)
      ],
    );
  }
}
