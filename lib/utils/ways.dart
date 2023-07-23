import 'package:flutter/material.dart';
import 'package:pomodoro_timer/utils/colors.dart';

class FocusMode {
  final Color _color = colors['red']!;
  final int _timer = 1500;

  Color get color {
    return _color;
  }

  int get timer {
    return _timer;
  }
}

class LongPauseMode {
  final Color _color = colors['purple']!;
  final int _timer = 900;

  Color get color {
    return _color;
  }

  int get timer {
    return _timer;
  }
}

class ShortPauseMode {
  final Color _color = colors['blue']!;
  final int _timer = 300;

  Color get color {
    return _color;
  }

  int get timer {
    return _timer;
  }
}
