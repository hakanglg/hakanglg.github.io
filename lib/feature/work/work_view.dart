import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/product/base/base_state.dart';
import 'package:portfolio_me/product/components/custom_title.dart';
import 'package:portfolio_me/product/components/mockup_builder.dart';
import 'package:portfolio_me/product/widget/column/padding_vertical.dart';
import 'package:portfolio_me/product/widget/row/padding_horizontal.dart';

@immutable
class WorkView extends StatelessWidget with BaseState {
  WorkView({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingVertical(
      child: PaddingHorizontal(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Spacer(),
                _buildLeftSection(context),
                const Spacer(),
                const SizedBox(width: 300),
                const Spacer(),
              ],
            ),
            Expanded(child: MockupBuilder(colorConstants: colorConstants)),
          ],
        ),
      ),
    );
  }

  SizedBox _buildLeftSection(BuildContext context) {
    return SizedBox(
      width: context.sized.dynamicWidth(0.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomTitle(no: "03", title: "Some Things  I’ve Built"),
          context.sized.emptySizedHeightBoxLow3x,
        ],
      ),
    );
  }
}
