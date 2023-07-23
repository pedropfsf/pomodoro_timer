import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_timer/services/colors.dart';
import 'package:pomodoro_timer/stores/main_store.dart';

final mainStore = MainStore();

class ModeOptions extends StatelessWidget {
  ModeOptions({super.key, this.value = Ways.focus});

  final dynamic value;

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
      value: Ways.short_pause,
      label: Text('Pausa curta'),
    ),
    ButtonSegment<Ways>(
      value: Ways.long_pause,
      label: Text('Pausa longa'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Observer(builder: (_) {
        return SegmentedButton<Ways>(
          showSelectedIcon: false,
          style: style,
          segments: segments,
          selected: <Ways>{mainStore.mode},
          onSelectionChanged: (Set<Ways> newSelection) {
            if (newSelection.isNotEmpty) {
              switch (newSelection.first) {
                case Ways.focus:
                  mainStore.toFocus();
                case Ways.short_pause:
                  mainStore.toShortPause();
                case Ways.long_pause:
                  mainStore.toLongPause();
                default:
              }
            }
          },
        );
      }),
    );
  }
}
