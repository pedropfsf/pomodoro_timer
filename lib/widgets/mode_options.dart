import 'package:flutter/material.dart';
import 'package:pomodoro_timer/services/colors.dart';
import 'package:pomodoro_timer/stores/main_store.dart';

final mainStore = MainStore();

class ModeOptions extends StatelessWidget {
  ModeOptions({
    super.key,
    this.value = Ways.focus,
    this.onSelectionChanged,
  });

  final dynamic value;
  final Function(Set<Ways>)? onSelectionChanged;

  final style = ButtonStyle(
    foregroundColor: MaterialStatePropertyAll(
      colors['white'],
    ),
    side: MaterialStatePropertyAll(
      BorderSide(
        color: colors['alpha']!,
      ),
    ),
  );

  final segments = const <ButtonSegment<Ways>>[
    ButtonSegment<Ways>(
      value: Ways.focus,
      label: Text('Foco'),
    ),
    ButtonSegment<Ways>(
      value: Ways.shortPause,
      label: Text('Pausa curta'),
    ),
    ButtonSegment<Ways>(
      value: Ways.longPause,
      label: Text('Pausa longa'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SegmentedButton<Ways>(
        showSelectedIcon: false,
        style: style,
        segments: segments,
        selected: <Ways>{value},
        onSelectionChanged: onSelectionChanged,
      ),
    );
  }
}
