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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(),
            _buildLeftSection(context),
            const Spacer(),
            NestedBorders(
              frontBackgroundColor: colorConstants.passiveGreen,
              icon: Icons.apple,
            ),
            Spacer(),

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
          CustomTitle(no: "01", title: "About Me"),
          context.sized.emptySizedHeightBoxLow,
          _buildDescription(context),
          context.sized.emptySizedHeightBoxLow,
          Expanded(child: _techChipsGridViewBuilder()),

        ],
      ),
    );
  }

  GridView _techChipsGridViewBuilder() {
    return GridView.builder(
        // eleman sayısı
        itemCount: _techList.length,
        // elemanlara her yerden 5 oranında boşluk ver
        padding: const EdgeInsets.all(5),
        // yan yana eleman sayısı
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 1.0,
          childAspectRatio: 3, // Bu oran genişlik ve yükseklik oranını kontrol eder
        ),
        itemBuilder: (BuildContext context, int index) {
          return TechChip(text: _techList[index]);
        });
  }



  Text _buildDescription(BuildContext context) {
    return Text(
          """Hello, I’m Hakan, a self-taught iOS and Flutter developer with 3 years of experience in mobile development. I love creating new things, adding value, and being productive. 
          \nI specialize in building high-quality, easily extendable mobile apps from the ground up, overseeing every stage of the product lifecycle from conception to publication.
While working as a Mobile Developer, I also continue to develop other applications and work on new ventures simultaneously. In addition to my technical skills, I bring a holistic approach to development by considering the perspectives of managers, designers, and product owners. This enables me to integrate platform-specific features seamlessly and ensure the product meets diverse stakeholder needs.""",
          style: context.general.textTheme.bodySmall!
              .copyWith(color: colorConstants.activeWhite),
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
        Icon(
          Icons.arrow_right,
          color: colorConstants.activeGreen,
        ),
        Text(text,
            style: context.general.textTheme.bodySmall!
                .copyWith(color: colorConstants.activeWhite))
      ],
    );
  }
}
