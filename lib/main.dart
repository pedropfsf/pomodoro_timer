import 'package:flutter/material.dart';
import 'package:pomodoro_timer/stores/main_store.dart';
import 'package:pomodoro_timer/widgets/button_timer.dart';
import 'package:pomodoro_timer/widgets/control.dart';
import 'package:pomodoro_timer/widgets/screen_container.dart';
import 'package:pomodoro_timer/widgets/screen_title.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

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
    return Observer(builder: (_) {
      return ScreenContainer(
        color: mainStore.color,
        children: [
          const ScreenTitle(text: 'Pomodoro Timer'),
          ButtonTimer(timer: mainStore.timer),
          const Control()
        ],
      );
    });
  }
}
