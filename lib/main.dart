import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_timer/services/timer.dart';
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

  void changeMode(Set<Ways> newSelection) {
    if (newSelection.isNotEmpty) {
      switch (newSelection.first) {
        case Ways.focus:
          mainStore.toFocus();
        case Ways.shortPause:
          mainStore.toShortPause();
        case Ways.longPause:
          mainStore.toLongPause();
        default:
      }
    }
  }

  void toggle() {
    if (mainStore.isPause) {
      mainStore.play();
    } else {
      mainStore.pause();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return ScreenContainer(
        color: mainStore.color,
        children: [
          Header(
            value: mainStore.mode,
            onSelectionChanged: changeMode,
          ),
          ButtonTimer(
            text: getTimerBySeconds(mainStore.timer),
            onPlay: mainStore.play,
          ),
          Control(
            isPause: mainStore.isPause,
            onPlay: toggle,
            onReplay: mainStore.replay,
          ),
        ],
      );
    });
  }
}
