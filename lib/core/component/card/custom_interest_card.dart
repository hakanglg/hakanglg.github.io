import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../../base/base_state.dart';
import 'package:kartal/kartal.dart';

class CustomInterestCard extends StatelessWidget with BaseState {
  final IconData icon;
  final String title;

  CustomInterestCard({super.key, required this.icon, required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
        // width: context.dynamicWidth(.1),
        margin: context.paddingLow,
        decoration: ShapeDecoration(
            shape: borderConstants.radiusRoundedAllLow,
            color: Colors.blueGrey[900]),
        child: Padding(
          padding: context.paddingNormal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Icon(
                  icon,
                ),
              ),

              context.emptySizedHeightBoxLow,
              AutoSizeText(
                title,
                style: context.textTheme.bodyText2,
                maxLines: 2,
              ),

              // const Spacer(),
            ],
          ),
        ));
  }
}
