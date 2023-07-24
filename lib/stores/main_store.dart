import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
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
  int timer = 5;

  @observable
  bool isPause = true;

  @action
  toFocus() {
    final mode = FocusMode();

    color = mode.color;
    timer = mode.timer;
    this.mode = Ways.focus;
    pause();
  }

  @action
  toShortPause() {
    final mode = ShortPauseMode();

    color = mode.color;
    timer = mode.timer;
    this.mode = Ways.shortPause;
    pause();
  }

  @action
  toLongPause() {
    final mode = LongPauseMode();

    color = mode.color;
    timer = mode.timer;
    this.mode = Ways.longPause;
    pause();
  }

  @action
  play() {
    isPause = false;
    const duration = Duration(seconds: 1);

    interval = Timer.periodic(duration, (currentInterval) {
      timer -= 1;
      if (timer <= 0) {
        currentInterval.cancel();
        isPause = true;
        touch();
      }
    });
  }

  @action
  pause() {
    isPause = true;
    interval?.cancel();
  }

  @action
  touch() {
    final player = AudioPlayer();
    player.play(AssetSource('sound.mp3'));
  }

  @action
  replay() {
    pause();
    switch (mode) {
      case Ways.focus:
        final mode = FocusMode();
        timer = mode.timer;
      case Ways.shortPause:
        final mode = ShortPauseMode();
        timer = mode.timer;
      case Ways.longPause:
        final mode = LongPauseMode();
        timer = mode.timer;
      default:
    }
  }
}
