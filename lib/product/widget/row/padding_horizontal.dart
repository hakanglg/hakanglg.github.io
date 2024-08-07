import 'package:flutter/material.dart';

class PaddingHorizontal extends StatelessWidget {
  const PaddingHorizontal({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [const Spacer(flex: 1), Expanded(flex: 19, child: child), const Spacer(flex: 1)],
    );
  }
}
