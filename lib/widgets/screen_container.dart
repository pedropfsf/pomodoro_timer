import 'package:flutter/material.dart';

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
      top: heightStatusBar + 24,
      left: 24,
      right: 24,
      bottom: 24,
    );

    return MaterialApp(
      home: Scaffold(
        body: Container(
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
