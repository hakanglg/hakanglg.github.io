import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/product/utility/constants/color/color_constants.dart';

class CustomVerticalText extends StatelessWidget {
  const CustomVerticalText({super.key, this.content, this.color, this.text});

  final Widget? content;
  final String? text;
  final Color? color;


  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3, // 90 derece soldan döndürmek için
      child: text != null ? Text(
        text!,
       style: context.general.textTheme.bodySmall!
          .copyWith(color: color ?? ColorConstants.instance.passiveWhite),
      ) : content,
    );
  }
}
