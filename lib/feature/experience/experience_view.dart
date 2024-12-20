import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/product/base/base_state.dart';
import 'package:portfolio_me/product/components/custom_title.dart';
import 'package:portfolio_me/product/components/experience_stepper.dart';
import 'package:portfolio_me/product/components/nested_borders.dart';
import 'package:portfolio_me/product/utility/constants/color/color_constants.dart';
import 'package:portfolio_me/product/utility/enum/image_enum.dart';
import 'package:portfolio_me/product/widget/button/default_button.dart';
import 'package:portfolio_me/product/widget/column/padding_vertical.dart';
import 'package:portfolio_me/product/widget/row/padding_horizontal.dart';

class ExperienceView extends StatelessWidget with BaseState {
  ExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingVertical(
      child: PaddingHorizontal(
        child: context.device.isLargeScreen
            ? _buildLargeBody(context)
            : _buildSmallBody(context),
      ),
    );
  }

  Row _buildLargeBody(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Spacer(),
        _buildLeftSection(context),
        const Spacer(),
        NestedBorders(
          frontBackgroundColor: colorConstants.passiveGreen,
          svgAsset: ImageItems.FlutterIcon.imagePathSvg,
        ),
        const Spacer(),
      ],
    );
  }

  Widget _buildSmallBody(BuildContext context) {
    return _buildLeftSectionSmall(context);
  }

  Widget _buildLeftSectionSmall(BuildContext context) {
    return Wrap(
      children: [
        CustomTitle(no: "02", title: "Experience"),
        context.sized.emptySizedHeightBoxLow,
        ExperienceStepper(),
      ],
    );
  }

  Container _buildLeftSection(BuildContext context) {
    return Container(
      width: context.sized.dynamicWidth(0.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomTitle(no: "02", title: "Experience"),
          context.sized.emptySizedHeightBoxLow,
          ExperienceStepper(),
        ],
      ),
    );
  }
}
