import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/product/base/base_state.dart';
import 'package:portfolio_me/product/utility/extensions/string_extensions.dart';

final class BottomLeftNavigationBar extends StatelessWidget with BaseState {
  BottomLeftNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padding.horizontalPaddingHigh,
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              InkWell(
                onTap: () async {
                  await stringConstants.linkedinUrl.launchURL();
                },
                child: Icon(
                  Ionicons.logo_linkedin,
                  color: colorConstants.activeWhite,
                ),
              ),
              context.sized.emptySizedHeightBoxLow,
              InkWell(
                onTap: () async {
                  await stringConstants.githubUrl.launchURL();
                },
                child: Icon(
                  Ionicons.logo_github,
                  color: colorConstants.activeWhite,
                ),
              ),
              context.sized.emptySizedHeightBoxLow,
              InkWell(
                onTap: () async {
                  await stringConstants.mediumUrl.launchURL();
                },
                child: Icon(
                  Ionicons.logo_medium,
                  color: colorConstants.activeWhite,
                ),
              ),
              context.sized.emptySizedHeightBoxLow,
              Container(
                height: context.sized.dynamicHeight(.17),
                width: 1.0,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
