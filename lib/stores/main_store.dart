import 'dart:async';

import 'package:mobx/mobx.dart';
import 'package:pomodoro_timer/services/colors.dart';
import 'package:pomodoro_timer/services/ways.dart';
import 'package:flutter/material.dart';

part 'main_store.g.dart';

enum Ways { focus, shortPause, longPause }

class MainStore = MainStoreBase with _$MainStore;

abstract class MainStoreBase with Store {
  @observable
  Timer? interval;

  @observable
  Ways mode = Ways.focus;

  @observable
  Color? color = colors['orange'];

  @observable
  int timer = 1500;

  @observable
  bool isPause = true;

  @action
  toFocus() {
    final mode = FocusMode();

    color = mode.color;
    timer = mode.timer;
    this.mode = Ways.focus;
  }

  @action
  toShortPause() {
    final mode = ShortPauseMode();

    color = mode.color;
    timer = mode.timer;
    this.mode = Ways.shortPause;
  }

  @action
  toLongPause() {
    final mode = LongPauseMode();

    color = mode.color;
    timer = mode.timer;
    this.mode = Ways.longPause;
  }

  @action
  play() {
    isPause = false;
    const duration = Duration(seconds: 2);
    interval = Timer(duration, () {
      timer -= 1;
    });
  }

  @action
  pause() {
    isPause = true;
    interval?.cancel();
  }
}
