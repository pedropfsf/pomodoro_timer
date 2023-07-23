import 'package:flutter/material.dart';
import 'package:pomodoro_timer/stores/main_store.dart';
import 'package:pomodoro_timer/widgets/mode_options.dart';
import 'package:pomodoro_timer/widgets/screen_title.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    this.value = Ways.focus,
    this.onSelectionChanged,
  });

  final Ways value;
  final Function(Set<Ways>)? onSelectionChanged;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const ScreenTitle(text: 'Pomodoro Timer'),
      const SizedBox(height: 8),
      ModeOptions(
        value: value,
        onSelectionChanged: onSelectionChanged,
      ),
    ]);
  }
}
