import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/product/base/base_state.dart';
import 'package:portfolio_me/product/widget/column/padding_vertical.dart';
import 'package:portfolio_me/product/widget/row/padding_horizontal.dart';

class ContactView extends StatelessWidget with BaseState {
    ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingHorizontal(
      child: PaddingVertical(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Contact",
                style: context.general.textTheme.bodySmall!.copyWith(
                  color: colorConstants.activeGreen,
                ),
              ),
            ]),
      ),
    );
  }
}
