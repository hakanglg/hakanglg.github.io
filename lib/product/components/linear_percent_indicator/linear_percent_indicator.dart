import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:porfolio_web/core/base/base_state.dart';

class LinearPercentWithText extends StatelessWidget with BaseState {
  final double percent;
  final String text;
  final String headline;

  LinearPercentWithText(
      {super.key,
      required this.percent,
      required this.text,
      required this.headline});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(headline,
            style: context.textTheme.bodyText2!
                .copyWith(color: colorConstants.white)),
        context.emptySizedHeightBoxLow,
        LinearPercentIndicator(
          backgroundColor: colorConstants.white,
          progressColor: colorConstants.blue,
          animation: true,
          lineHeight: 20.0,
          animationDuration: 1000,
          percent: percent,
          barRadius: borderConstants.radiusCircular,
          center: Text(text),
          linearStrokeCap: LinearStrokeCap.butt,
        ),
        context.emptySizedHeightBoxNormal,
      ],
    );
  }
}
