import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:porfolio_web/core/base/base_state.dart';

class AppBarActions extends StatelessWidget with BaseState {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          LineAwesomeIcons.linkedin_in,
          color: colorConstants.black,
        ),
        context.emptySizedWidthBoxLow,
        Icon(
          LineAwesomeIcons.github,
          color: colorConstants.black,
        ),
        context.emptySizedWidthBoxLow,
        Icon(
          Icons.email,
          color: colorConstants.black,
        ),
        context.emptySizedWidthBoxLow,
      ],
    );
  }
}
