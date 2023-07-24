import 'package:flutter/material.dart';
import 'package:pomodoro_timer/services/colors.dart';

abstract class Mode {
  Color color = Colors.white;
  int timer = 0;
}

class FocusMode extends Mode {
  final Color _color = colors['orange']!;
  final int _timer = 1500;

  @override
  Color get color {
    return _color;
  }

  @override
  int get timer {
    return _timer;
  }
}

class ShortPauseMode extends Mode {
  final Color _color = colors['blue']!;
  final int _timer = 300;

  @override
  Color get color {
    return _color;
  }

  @override
  int get timer {
    return _timer;
  }
}

class LongPauseMode extends Mode {
  final Color _color = colors['purple']!;
  final int _timer = 900;

  @override
  Color get color {
    return _color;
  }

  @override
  int get timer {
    return _timer;
  }
}

Mode getMode([String value = 'focus']) {
  switch (value) {
    case 'focus':
      return FocusMode();
    case 'short-pause':
      return ShortPauseMode();
    case 'long-pause':
      return LongPauseMode();
    default:
      return FocusMode();
  }
}
