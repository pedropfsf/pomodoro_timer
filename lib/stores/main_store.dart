import 'package:mobx/mobx.dart';
import 'package:pomodoro_timer/services/colors.dart';
import 'package:pomodoro_timer/services/ways.dart';
import 'package:flutter/material.dart';

part 'main_store.g.dart';

class MainStore = MainStoreBase with _$MainStore;

abstract class MainStoreBase with Store {
  @observable
  List ways = [FocusMode(), ShortPauseMode(), LongPauseMode()];

  @observable
  int index = 0;

  @observable
  Color? color = colors['orange'];

  @observable
  int timer = 0;

  @action
  setMode(int index) {
    final mode = getMode(ways.elementAt(index));
    color = mode.color;
    timer = mode.timer;
  }

  @action
  setTimer(int value) {
    timer = value;
  }

  @action
  next() {
    if (index < 2) {
      index++;
      setMode(index);
    }
  }

  @action
  back() {
    if (index > 0) {
      index--;
      setMode(index);
    }
  }
}
