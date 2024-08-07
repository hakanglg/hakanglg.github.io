import 'package:flutter/material.dart';

class PaddingVertical extends StatelessWidget {
  const PaddingVertical({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [const Spacer(flex: 1), Expanded(flex: 19, child: child), const Spacer(flex: 1)],
    );
  }
}
