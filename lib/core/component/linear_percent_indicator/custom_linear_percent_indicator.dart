import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:porfolio_web/core/base/base_state.dart';

class CustomLinearPercentIndicator extends StatelessWidget {
  final Color bgColor;
  final Color progressColor;
  final double percent;
  final String text;
  final Radius radius;

  const CustomLinearPercentIndicator({
    super.key,
    required this.bgColor,
    required this.progressColor,
    required this.percent,
    required this.text,
    required this.radius,
  });
  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      backgroundColor: bgColor,
      progressColor: progressColor,
      animation: true,
      lineHeight: 20.0,
      animationDuration: 1000,
      percent: percent,
      barRadius: radius,
      center: Text(text),
      linearStrokeCap: LinearStrokeCap.butt,
    );
  }
}
