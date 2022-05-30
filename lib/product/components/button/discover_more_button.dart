import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DiscoverMoreButton extends StatelessWidget {
  final String _discoverMore = "DISCOVER MORE";
  final viewModel;

  final GlobalKey itemKey;
  final int index;

  const DiscoverMoreButton(
      {super.key,
      required this.itemKey,
      required this.index,
      required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return InkWell(
        onTap: () => viewModel.scrollAndSelected(context, itemKey, index),
        child: Column(
          children: [
            Text(_discoverMore),
            const Icon(LineAwesomeIcons.angle_down)
          ],
        ),
      );
    });
  }
}
