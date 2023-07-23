import 'package:mobx/mobx.dart';
import 'package:pomodoro_timer/services/colors.dart';
import 'package:pomodoro_timer/services/ways.dart';
import 'package:flutter/material.dart';

part 'main_store.g.dart';

enum Ways { focus, short_pause, long_pause }

class MainStore = MainStoreBase with _$MainStore;

abstract class MainStoreBase with Store {
  @observable
  Ways mode = Ways.focus;

  @observable
  Color? color = colors['orange'];

  @observable
  int timer = 0;

  @action
  setMode(Ways value) {
    mode = value;
  }

  @action
  setColor(Color value) {
    color = value;
  }

  @action
  setTimer(int value) {
    timer = value;
  }

  @action
  toFocus() {
    final mode = FocusMode();

    setMode(Ways.focus);
    setColor(mode.color);
    setTimer(mode.timer);
  }

  @action
  toShortPause() {
    final mode = ShortPauseMode();

    setMode(Ways.short_pause);
    setColor(mode.color);
    setTimer(mode.timer);
  }

  @action
  toLongPause() {
    final mode = LongPauseMode();

    setMode(Ways.long_pause);
    setColor(mode.color);
    setTimer(mode.timer);
  }
}
