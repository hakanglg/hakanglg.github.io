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
    final bool isSmallScreen = context.device.isSmallScreen; // Ekran boyutuna göre küçük ekran kontrolü
    final double dynamicWidth = isSmallScreen ? 0.8 : 0.4; // Küçük ekranlarda genişliği artırıyoruz

    return PaddingVertical(
      child: PaddingHorizontal(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Spacer(),
                _buildLeftSection(context, dynamicWidth),
                if (!isSmallScreen) ...[
                  const Spacer(),
                  const SizedBox(width: 300), // Yalnızca büyük ekranlarda boşluk bırakıyoruz
                  const Spacer(),
                ],
              ],
            ),
            if (isSmallScreen)
              context.sized.emptySizedHeightBoxLow3x, // Küçük ekranlarda dikey boşluk ekliyoruz
            Expanded(child: MockupBuilder(colorConstants: colorConstants)),
          ],
        ),
      ),
    );
  }

  SizedBox _buildLeftSection(BuildContext context, double dynamicWidth) {
    return SizedBox(
      width: context.sized.dynamicWidth(dynamicWidth), // Genişliği ekran boyutuna göre ayarlıyoruz
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomTitle(no: "03", title: "Some Things I’ve Built"),
          context.sized.emptySizedHeightBoxLow3x,
        ],
      ),
    );
  }
}