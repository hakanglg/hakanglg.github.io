import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/product/base/base_state.dart';
import 'package:portfolio_me/product/components/custom_title.dart';
import 'package:portfolio_me/product/components/nested_borders.dart';
import 'package:portfolio_me/product/widget/column/padding_vertical.dart';
import 'package:portfolio_me/product/widget/row/padding_horizontal.dart';

class WorkView extends StatelessWidget with BaseState {
  WorkView({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingVertical(
      child: PaddingHorizontal(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Spacer(),
            _buildLeftSection(context),
            const Spacer(),
            SizedBox(width: 300),
            Spacer()
            // NestedBorders(
            //   frontBackgroundColor: colorConstants.passiveGreen,
            //   // icon: Icons.flutter_dash,
            //   svgAsset: 'assets/svg/ic_flutter.svg',
            // ),
          ],
        ),
      ),
    );
  }


  Container _buildLeftSection(BuildContext context) {
    return Container(
      width: context.sized.dynamicWidth(0.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomTitle(no: "03", title: "Some Things  I’ve Built"),
          context.sized.emptySizedHeightBoxLow,
          // _buildDescription(context),
          // SwitchableProfileCard(),
          context.sized.emptySizedHeightBoxLow,
          // Expanded(child: _techChipsGridViewBuilder()),

        ],
      ),
    );
  }

}

