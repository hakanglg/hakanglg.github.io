import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class GoTopButton extends StatelessWidget {
  final String _discoverMore = "DISCOVER MORE";
  final viewModel;

  final GlobalKey itemKey;
  final int index;

  const GoTopButton(
      {super.key,
      required this.itemKey,
      required this.index,
      required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => viewModel.scrollAndSelected(context, itemKey, index),
      child: const Icon(LineAwesomeIcons.angle_up),
    );
  }
}
