import 'package:flutter/material.dart';
import 'package:pomodoro_timer/stores/main_store.dart';
import 'package:pomodoro_timer/widgets/button_timer.dart';
import 'package:pomodoro_timer/widgets/control.dart';
import 'package:pomodoro_timer/widgets/header.dart';
import 'package:pomodoro_timer/widgets/screen_container.dart';

main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final mainStore = MainStore();

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      children: [
        const Header(),
        ButtonTimer(),
        const Control(),
      ],
    );
  }
}
