import 'package:flutter/material.dart';
import 'package:porfolio_web/feature/home/view_modal/home_view_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../core/constants/text_style/custom_text_style.dart';

class AppBarTitle extends StatelessWidget {
  final HomeViewModel viewModel = HomeViewModel();

  final GlobalKey homeKey, aboutKey, skillsKey, portfolioKey;

  final String _home = "Home";

  final String _about = "About";

  final String _skills = "Skills";

  final String _portfolio = "Portfolio";

  AppBarTitle(
      {super.key,
      required this.homeKey,
      required this.aboutKey,
      required this.skillsKey,
      required this.portfolioKey});
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      children: [
        InkWell(
          onTap: () => viewModel.scrollAndSelected(context, homeKey, 1),
          child: Observer(builder: (_) {
            return Text(
              _home,
              style: viewModel.selectedItem == 1
                  ? CustomTextStyle.SelectedTextStyle(context)
                  : CustomTextStyle.unSelectedTextStyle(context),
            );
          }),
        ),
        InkWell(
            onTap: () => viewModel.scrollAndSelected(context, aboutKey, 2),
            child: Observer(builder: (_) {
              return Text(
                _about,
                style: viewModel.selectedItem == 2
                    ? CustomTextStyle.SelectedTextStyle(context)
                    : CustomTextStyle.unSelectedTextStyle(context),
              );
            })),
        InkWell(
            onTap: () => viewModel.scrollAndSelected(context, skillsKey, 3),
            child: Observer(builder: (_) {
              return Text(
                _skills,
                style: viewModel.selectedItem == 3
                    ? CustomTextStyle.SelectedTextStyle(context)
                    : CustomTextStyle.unSelectedTextStyle(context),
              );
            })),
        InkWell(
            onTap: () => viewModel.scrollAndSelected(context, portfolioKey, 4),
            child: Observer(
              builder: (_) {
                return Text(
                  _portfolio,
                  style: viewModel.selectedItem == 4
                      ? CustomTextStyle.SelectedTextStyle(context)
                      : CustomTextStyle.unSelectedTextStyle(context),
                );
              },
            ))
      ],
    );
  }
}
