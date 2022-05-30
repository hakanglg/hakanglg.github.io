import 'package:flutter/material.dart';
import 'package:porfolio_web/feature/home/view_modal/home_view_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../core/constants/text_style/custom_text_style.dart';

class AppBarTitle extends StatelessWidget {
  final String homeTitle = "Home";
  final String aboutTitle = "About";
  final String skillsTitle = "Skills";
  final String portfolioTitle = "Portfolio";

  const AppBarTitle({
    Key? key,
    required HomeViewModel viewModel,
    required this.homeKey,
    required this.aboutKey,
    required this.skillsKey,
    required this.portfolioKey,
  })  : _viewModel = viewModel,
        super(key: key);

  final HomeViewModel _viewModel;
  final GlobalKey<State<StatefulWidget>> homeKey;
  final GlobalKey<State<StatefulWidget>> aboutKey;
  final GlobalKey<State<StatefulWidget>> skillsKey;
  final GlobalKey<State<StatefulWidget>> portfolioKey;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      children: [
        InkWell(
          onTap: () => _viewModel.scrollAndSelected(context, homeKey, 1),
          child: Observer(builder: (_) {
            return Text(
              homeTitle,
              style: _viewModel.selectedItem == 1
                  ? CustomTextStyle.SelectedTextStyle()
                  : CustomTextStyle.unSelectedTextStyle(),
            );
          }),
        ),
        Observer(builder: (_) {
          return InkWell(
              onTap: () => _viewModel.scrollAndSelected(context, aboutKey, 2),
              child: Text(
                aboutTitle,
                style: _viewModel.selectedItem == 2
                    ? CustomTextStyle.SelectedTextStyle()
                    : CustomTextStyle.unSelectedTextStyle(),
              ));
        }),
        InkWell(
            onTap: () => _viewModel.scrollAndSelected(context, skillsKey, 3),
            child: Observer(builder: (_) {
              return Text(
                skillsTitle,
                style: _viewModel.selectedItem == 3
                    ? CustomTextStyle.SelectedTextStyle()
                    : CustomTextStyle.unSelectedTextStyle(),
              );
            })),
        InkWell(
            onTap: () => _viewModel.scrollAndSelected(context, portfolioKey, 4),
            child: Observer(
              builder: (_) {
                return Text(
                  portfolioTitle,
                  style: _viewModel.selectedItem == 4
                      ? CustomTextStyle.SelectedTextStyle()
                      : CustomTextStyle.unSelectedTextStyle(),
                );
              },
            ))
      ],
    );
  }
}
