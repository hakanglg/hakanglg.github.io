import 'package:flutter/material.dart';

import '../../base/base_state.dart';
import 'package:kartal/kartal.dart';

class CustomInterestCard extends StatelessWidget with BaseState {
  final IconData icon;
  final String title;

  CustomInterestCard({super.key, required this.icon, required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingNormal,
      child: Container(
          decoration: ShapeDecoration(
              shape: borderConstants.radiusRoundedAllLow,
              color: Colors.blueGrey[900]),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Spacer(),

              FittedBox(
                child: Icon(icon),
              ),

              context.emptySizedHeightBoxLow,
              Text(
                title,
                style: context.textTheme.bodyText2,
              ),
              // const Spacer(),
            ],
          )),
    );
  }
}
