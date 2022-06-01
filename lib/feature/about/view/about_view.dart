import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:porfolio_web/core/base/base_state.dart';
import 'package:porfolio_web/product/components/button/discover_more_button.dart';

import '../../../core/component/card/custom_interest_card.dart';
import '../../../core/component/row/my_row.dart';

class AboutView extends StatelessWidget with BaseState {
  final viewModel;
  final GlobalKey Customkey;

  @override
  AboutView({super.key, required this.viewModel, required this.Customkey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _appBarSection(context),
        body: MyRow(
          child: Column(
            children: [
              Expanded(
                  flex: 2, child: AutoSizeText(stringConstants.aboutSection)),
              context.emptySizedHeightBoxLow,
              Expanded(flex: 6, child: _myInterestSection(context)),
              const Spacer(),
              DiscoverMoreButton(
                  viewModel: viewModel, index: 3, itemKey: Customkey)
            ],
          ),
        ));
  }

  AppBar _appBarSection(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Text(stringConstants.about,
          style: context.textTheme.headline5!.copyWith(color: Colors.white)),
    );
  }

  Column _myInterestSection(BuildContext context) {
    return Column(
      children: [
        _headlineText(context, stringConstants.myInterests),
        context.emptySizedHeightBoxNormal,
        Wrap(
          spacing: 10,
          runSpacing: 20,
          children: [
            CustomInterestCard(
              icon: LineAwesomeIcons.dumbbell,
              title: stringConstants.bodyBuilding,
            ),
            CustomInterestCard(
              icon: LineAwesomeIcons.motorcycle,
              title: stringConstants.motorcycle,
            ),
            CustomInterestCard(
              icon: LineAwesomeIcons.mountain,
              title: stringConstants.rockClimbing,
            ),
            CustomInterestCard(
              icon: LineAwesomeIcons.code,
              title: stringConstants.sideProjects,
            ),
            CustomInterestCard(
              icon: LineAwesomeIcons.gamepad,
              title: stringConstants.games,
            ),
            CustomInterestCard(
              icon: LineAwesomeIcons.globe,
              title: stringConstants.travel,
            ),
            CustomInterestCard(
              icon: LineAwesomeIcons.shuttle_van,
              title: stringConstants.vanLife,
            ),
            CustomInterestCard(
              icon: LineAwesomeIcons.music,
              title: stringConstants.music,
            ),
          ],
        ),
      ],
    );
  }

  Text _headlineText(BuildContext context, String text) {
    return Text(text,
        style: context.textTheme.headline6!
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold));
  }
}
