import 'package:flutter/material.dart';

enum Ways { focus, short_pause, long_pause }

class ModeOptions extends StatelessWidget {
  const ModeOptions({super.key, this.value});

  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Ways>(
      segments: const <ButtonSegment<Ways>>[
        ButtonSegment<Ways>(
            value: Ways.focus,
            label: Text('Foco'),
            icon: Icon(Icons.calendar_view_day)),
        ButtonSegment<Ways>(
            value: Ways.short_pause,
            label: Text('Pausa curta'),
            icon: Icon(Icons.calendar_view_week)),
        ButtonSegment<Ways>(
            value: Ways.short_pause,
            label: Text('Pausa longa'),
            icon: Icon(Icons.calendar_view_month)),
      ],
      selected: <Ways>{value},
      // onSelectionChanged: (Set<Ways> newSelection) {
      //   setState(() {
      //     value = newSelection.first;
      //   });
      // },
    );
  }
}
