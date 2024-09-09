import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/product/base/base_state.dart';
import 'package:portfolio_me/product/widget/button/default_button.dart';
import 'package:portfolio_me/product/widget/column/padding_vertical.dart';
import 'package:portfolio_me/product/widget/row/padding_horizontal.dart';

class WelcomeView extends StatelessWidget with BaseState {
  WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingHorizontal(
      child: PaddingVertical(
          child: context.device.isSmallScreen
              ? _buildSmallScreen(context)
              : _buildLargeScreen(context)),
    );
  }

  Column _buildLargeScreen(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi, my name is",
            style: context.general.textTheme.bodySmall!.copyWith(
              color: colorConstants.activeGreen,
            ),
          ),
          context.sized.emptySizedHeightBoxLow3x,
          Text(appConstants.appName,
              style: context.general.textTheme.headlineLarge!
                  .copyWith(color: colorConstants.activeWhite)),
          // context.sized.emptySizedHeightBoxLow,
          Text(
            "iOS and Flutter Developer based in Istanbul",
            style: context.general.textTheme.headlineMedium!
                .copyWith(color: colorConstants.passiveWhite),
          ),
          context.sized.emptySizedHeightBoxNormal,
          DefaultButton(text: "Discover More", url: stringConstants.linkedinUrl),
        ]);
  }

  Widget _buildSmallScreen(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, my name is",
          style: context.general.textTheme.bodySmall!.copyWith(
            color: colorConstants.activeGreen,
          ),
        ),
        context.sized.emptySizedHeightBoxLow3x,
        Text(appConstants.appName,
            style: context.general.textTheme.headlineSmall!
                .copyWith(color: colorConstants.activeWhite)),
        // context.sized.emptySizedHeightBoxLow,
        Text(
          "iOS and Flutter Developer\nbased in Istanbul",
          style: context.general.textTheme.bodySmall!
              .copyWith(color: colorConstants.passiveWhite),
        ),
        context.sized.emptySizedHeightBoxNormal,
        DefaultButton(text: "Discover More", url: stringConstants.linkedinUrl),
      ],
    );
  }
}
