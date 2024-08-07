import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/product/widget/text/vertical_text.dart';

class BottomRightNavigationBar extends StatelessWidget {
  const BottomRightNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const CustomVerticalText(text: "hakangolge@icloud.com"),
        context.sized.emptySizedHeightBoxLow,
        Container(
          height: context.sized.dynamicHeight(.05),
          width: 1.0,
          color: Colors.grey,
        ),
      ],
    );;
  }
}
