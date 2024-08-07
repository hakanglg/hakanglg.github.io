import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/product/utility/constants/color/color_constants.dart';

class CustomTitle extends StatelessWidget {
  CustomTitle({super.key, required this.no, required this.title});

  final String no;
  final String title;

  final ColorConstants colorConstants = ColorConstants.instance;

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Text("$no.",
          style: context.general.textTheme.bodySmall!
              .copyWith(color: colorConstants.activeGreen)),
      context.sized.emptySizedWidthBoxLow,
      Text(title,
          style: context.general.textTheme.headlineSmall!
              .copyWith(color: colorConstants.white, fontWeight: FontWeight.w400)),
      Expanded(
        child: Divider(
          color: colorConstants.activeWhite,
          thickness: 1.0,
          height: 1.0,
          indent: 10.0,
          endIndent: 10.0,
        ),
      ),
    ]);
    ;
  }
}
