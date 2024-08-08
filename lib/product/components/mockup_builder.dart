import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/product/model/work.dart';
import 'package:portfolio_me/product/utility/constants/color/color_constants.dart';
import 'package:portfolio_me/product/utility/extensions/string_extensions.dart';

class MockupBuilder extends StatelessWidget{
  const MockupBuilder({super.key, required this.colorConstants});

  final ColorConstants colorConstants;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth = constraints.maxWidth * 0.5;
        final itemHeight = constraints.maxHeight * 0.4;
        final containerWidth = constraints.maxWidth * 0.4;
        final containerHeight = constraints.maxHeight * 0.30;
        return ListView.builder(
          itemCount: works.length,
          // physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final work = works[index];
            final isEven = index % 2 == 0;
            return Padding(
              padding: context.padding.onlyBottomPaddingHigh,
              child: SizedBox(
                height: itemHeight,
                child: Stack(
                  children: [
                    Positioned(
                      left: isEven ? 120 : null,
                      right: isEven ? null : 120,
                      child: SizedBox(
                        width: itemWidth,
                        height: itemHeight,
                        child: Image.asset(
                          work.imagePath,
                          fit: BoxFit.fitWidth,
                          // colorBlendMode: BlendMode.color,
                          // color: colorConstants.activeGreen.withOpacity(.3),
                        ),
                      ),
                    ),
                    Positioned(
                      left: isEven ? (itemWidth - 40) : null,
                      right: isEven ? null : (itemWidth - 40),
                      top: (itemHeight / 2) - (containerHeight / 2),
                      child: Column(
                        crossAxisAlignment: isEven ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                        mainAxisAlignment: isEven ? MainAxisAlignment.end : MainAxisAlignment.start,
                        children: [
                          Container(
                            width: containerWidth,
                            height: containerHeight,
                            decoration: BoxDecoration(
                              color: colorConstants.activeBlue,
                            ),
                            child: Padding(
                              padding: context.padding.paddingLow,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: isEven ?  CrossAxisAlignment.end : CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: context.padding.onlyTopPaddingLow,
                                    child: Text(
                                      work.title,
                                      textAlign: isEven ? TextAlign.end : TextAlign.start,
                                      style: context.general.textTheme.titleSmall!.copyWith(
                                        color: colorConstants.activeGreen,
                                      ),
                                    ),
                                  ),
                                  ...work.bulletPoints
                                      .map((e) => Padding(
                                    padding: context.padding.onlyTopPaddingLow,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "-$e",
                                            textAlign: isEven ? TextAlign.end : TextAlign.start,
                                            style: context.general.textTheme.bodySmall!
                                                .copyWith(
                                              color: colorConstants.activeWhite,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))
                                      .toList(),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              InkWell(
                                  onTap: () async {
                                    await work.githubUrl.launchURL();
                                  },
                                  child: Icon(Ionicons.logo_github, color: colorConstants.white)),
                              Icon(Ionicons.logo_google_playstore, color: colorConstants.passiveWhite),
                              Icon(Ionicons.logo_apple_appstore, color: colorConstants.passiveWhite),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
