import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:porfolio_web/core/base/base_state.dart';
import 'package:porfolio_web/core/component/row/my_row.dart';
import 'package:porfolio_web/feature/portfolio/view/portfolio_view.dart';
import 'package:porfolio_web/feature/skills/view/skills_view.dart';
import 'package:porfolio_web/product/components/button/discover_more_button.dart';
import '../../../core/constants/image/image_constants.dart';
import '../../../product/components/app_bar/app_bar_actions.dart';
import '../../../product/components/app_bar/app_bar_title.dart';
import '../../about/view/about_view.dart';
import '../view_modal/home_view_model.dart';

class HomeView extends StatelessWidget with BaseState {
  final HomeViewModel _viewModel = HomeViewModel();

  final homeKey = GlobalKey();

  final aboutKey = GlobalKey();

  final skillsKey = GlobalKey();

  final portfolioKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppbarSection(context),
      body: LayoutBuilder(
        builder: (context, constraint) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  SizedBox(
                      key: homeKey,
                      height: constraint.maxHeight,
                      child: _WelcomeSection(context)),
                  SizedBox(
                    key: aboutKey,
                    height: constraint.maxHeight,
                    child:
                        AboutView(Customkey: skillsKey, viewModel: _viewModel),
                  ),
                  SizedBox(
                    key: skillsKey,
                    height: constraint.maxHeight,
                    child: SkillsView(
                        Customkey: portfolioKey, viewModel: _viewModel),
                  ),
                  SizedBox(
                    key: portfolioKey,
                    height: constraint.maxHeight,
                    child: PortfolioView(
                        Customkey: homeKey, viewModel: _viewModel),
                  ),
                  Text(
                    stringConstants.createdBy,
                    style: context.textTheme.subtitle2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  AppBar _AppbarSection(BuildContext context) {
    return AppBar(
      title: AppBarTitle(
          viewModel: _viewModel,
          homeKey: homeKey,
          aboutKey: aboutKey,
          skillsKey: skillsKey,
          portfolioKey: portfolioKey),
      actions: [
        AppBarActions(
          viewModel: _viewModel,
        )
      ],
    );
  }

  Stack _WelcomeSection(
    BuildContext context,
  ) {
    return Stack(children: [
      _BackgroundImage(),
      MyRow(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            context.emptySizedHeightBoxHigh,
            _nameTitleText(context),
            context.emptySizedHeightBoxLow,
            _SubtitleText(context),
            context.emptySizedHeightBoxNormal,
            _ButtonsSection(context),
            const Spacer(),
            DiscoverMoreButton(
                viewModel: _viewModel, index: 2, itemKey: aboutKey)
          ],
        ),
      ),
    ]);
  }

  Row _ButtonsSection(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _contactMeButton(context),
        context.emptySizedWidthBoxLow,
        _hireMeButton(context),
      ],
    );
  }

  TextButton _contactMeButton(BuildContext context) {
    final url = 'mailto:${stringConstants.mailUrl}?';

    return TextButton(
        onPressed: () => _viewModel.launchInBrowser(url),
        child: Text(
          stringConstants.contactME,
          style: context.textTheme.bodyText2,
        ));
  }

  TextButton _hireMeButton(BuildContext context) {
    return TextButton(
        onPressed: () =>
            _viewModel.launchInBrowser(stringConstants.linkedinUrl),
        child: Text(
          stringConstants.hireMe,
          style: context.textTheme.bodyText2,
        ));
  }

  Container _BackgroundImage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: .7,
          image: AssetImage(ImagePaths.wallpaper.path()),
        ),
      ),
    );
  }

  // Row(
  Text _SubtitleText(BuildContext context) =>
      Text(stringConstants.homeSubtitle, style: context.textTheme.subtitle2);

  Text _nameTitleText(BuildContext context) {
    return Text(
      stringConstants.homeTitle,
      style: context.textTheme.headline3,
    );
  }
}
