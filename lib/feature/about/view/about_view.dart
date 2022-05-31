import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:porfolio_web/core/base/base_state.dart';
import 'package:porfolio_web/core/component/row/my_row.dart';

import '../../../core/component/card/custom_interest_card.dart';

class AboutView extends StatelessWidget with BaseState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(stringConstants.about,
            style: context.textTheme.headline5!.copyWith(color: Colors.white)),
      ),
      body: MyRow(
        child: Column(
          children: [
            Expanded(flex: 1, child: Text(stringConstants.aboutSection)),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          _headlineText(
                              context, stringConstants.personalDetails),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: _headlineText(
                                  context, stringConstants.myInterests)),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomInterestCard(
                                    icon: LineAwesomeIcons.accessible_icon,
                                    title: "tead",
                                  ),
                                ),
                                Expanded(
                                  child: CustomInterestCard(
                                    icon: LineAwesomeIcons.accessible_icon,
                                    title: "tead",
                                  ),
                                ),
                                Expanded(
                                  child: CustomInterestCard(
                                    icon: LineAwesomeIcons.accessible_icon,
                                    title: "tead",
                                  ),
                                ),
                                Expanded(
                                  child: CustomInterestCard(
                                    icon: LineAwesomeIcons.accessible_icon,
                                    title: "tead",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomInterestCard(
                                    icon: LineAwesomeIcons.accessible_icon,
                                    title: "tead",
                                  ),
                                ),
                                Expanded(
                                  child: CustomInterestCard(
                                    icon: LineAwesomeIcons.accessible_icon,
                                    title: "tead",
                                  ),
                                ),
                                Expanded(
                                  child: CustomInterestCard(
                                    icon: LineAwesomeIcons.accessible_icon,
                                    title: "tead",
                                  ),
                                ),
                                Expanded(
                                  child: CustomInterestCard(
                                    icon: LineAwesomeIcons.accessible_icon,
                                    title: "tead",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Text _headlineText(BuildContext context, String text) {
    return Text(text,
        style: context.textTheme.headline6!
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold));
  }
}
