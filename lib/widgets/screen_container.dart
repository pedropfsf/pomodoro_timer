import 'package:flutter/material.dart';
import 'package:pomodoro_timer/stores/main_store.dart';

final mainStore = MainStore();

class ScreenContainer extends StatelessWidget {
  const ScreenContainer({
    super.key,
    required this.children,
    this.color,
  });

  final List<Widget> children;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final heightStatusBar = MediaQuery.of(context).viewPadding.top;
    final padding = EdgeInsets.only(
      top: heightStatusBar + 64,
      bottom: 64,
    );

    return MaterialApp(
      home: Scaffold(
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          width: double.infinity,
          color: color,
          padding: padding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}
