import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/product/base/base_state.dart';
import 'package:portfolio_me/product/components/custom_title.dart';
import 'package:portfolio_me/product/components/nested_borders.dart';
import 'package:portfolio_me/product/utility/constants/color/color_constants.dart';
import 'package:portfolio_me/product/widget/column/padding_vertical.dart';
import 'package:portfolio_me/product/widget/row/padding_horizontal.dart';

final class AboutView extends StatelessWidget with BaseState {
  AboutView({super.key});

  final _techList = [
    "Flutter",
    "Swift",
    "Bloc/Cubit",
    "Provider",
    "UIKit",
    "SwiftUI",
    "RxSwift",
    "MVVM",
    "VIPER",
    "SQL",
    "Firebase",
    "NoSQL",
    "Clean Swift",
    "Alamofire",
    "Snapkit"
  ];

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

  Widget _buildLargeBody(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        _buildLeftSection(context),
        const Spacer(),
        NestedBorders(
          frontBackgroundColor: colorConstants.passiveGreen,
          icon: Icons.apple,
        ),
        const Spacer(),
      ],
    );
  }

  Widget _buildSmallBody(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          context.sized.emptySizedHeightBoxLow3x,
          CustomTitle(no: "01", title: "About Me"),
          context.sized.emptySizedHeightBoxLow3x,
          _buildDescription(context),
          context.sized.emptySizedHeightBoxLow3x,
          Expanded(child: _techChipsGridViewBuilderSmall(context)),
        ],
      ),
    );
  }

  Widget _buildLeftSection(BuildContext context) {
    return Container(
      width: context.sized.dynamicWidth(0.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomTitle(no: "01", title: "About Me"),
          context.sized.emptySizedHeightBoxLow,
          _buildDescription(context),
          context.sized.emptySizedHeightBoxLow,
          Expanded(child: _techChipsGridViewBuilder()),
        ],
      ),
    );
  }

  GridView _techChipsGridViewBuilderSmall(BuildContext context) {
    return GridView.builder(
      itemCount: _techList.length,
      padding: context.padding.horizontalPaddingLow,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: .5,
        mainAxisSpacing: .5,
        childAspectRatio: 6,
      ),
      itemBuilder: (BuildContext context, int index) {
        return TechChip(text: _techList[index]);
      },
    );
  }

  GridView _techChipsGridViewBuilder() {
    return GridView.builder(
      itemCount: _techList.length,
      padding: const EdgeInsets.all(5),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: .8,
        mainAxisSpacing: .4,
        childAspectRatio: 6,
      ),
      itemBuilder: (BuildContext context, int index) {
        return TechChip(text: _techList[index]);
      },
    );
  }

  Text _buildDescription(BuildContext context) {
    return Text(
      stringConstants.aboutDescription,
      style: context.general.textTheme.bodySmall!.copyWith(
        color: colorConstants.activeWhite,
      ),
    );
  }
}

class TechChip extends StatelessWidget {
  TechChip({super.key, required this.text});

  final String text;
  final ColorConstants colorConstants = ColorConstants.instance;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Icon(
            Icons.arrow_right,
            color: colorConstants.activeGreen,
          ),
        ),
        Text(
          text,
          style: context.general.textTheme.bodySmall!
              .copyWith(color: colorConstants.activeWhite),
        ),
      ],
    );
  }
}