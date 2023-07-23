import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_timer/stores/main_store.dart';

final mainStore = MainStore();

class ScreenContainer extends StatelessWidget {
  const ScreenContainer({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final heightStatusBar = MediaQuery.of(context).viewPadding.top;
    final padding = EdgeInsets.only(
      top: heightStatusBar + 64,
      bottom: 64,
    );

    return MaterialApp(
      home: Scaffold(
        body: Observer(
          builder: (_) {
            return AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: double.infinity,
              color: mainStore.color,
              padding: padding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: children,
              ),
            );
          },
        ),
      ),
    );
  }
}
