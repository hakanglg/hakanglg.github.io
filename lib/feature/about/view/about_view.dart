import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:porfolio_web/core/base/base_state.dart';
import 'package:porfolio_web/core/component/column/my_column.dart';

import '../../../core/component/card/custom_interest_card.dart';
import '../../../core/component/row/my_row.dart';

class AboutView extends StatelessWidget with BaseState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(stringConstants.about,
              style:
                  context.textTheme.headline5!.copyWith(color: Colors.white)),
        ),
        body: MyRow(
          child: MyColumn(
            child: Column(
              children: [
                Expanded(flex: 1, child: Text(stringConstants.aboutSection)),
                Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _headlineText(context, stringConstants.myInterests),
                        context.emptySizedHeightBoxLow,
                        Wrap(
                          children: [
                            CustomInterestCard(
                              icon: LineAwesomeIcons.heart,
                              title: stringConstants.flutter,
                            ),
                            CustomInterestCard(
                              icon: LineAwesomeIcons.heart,
                              title: stringConstants.flutter,
                            ),
                            CustomInterestCard(
                              icon: LineAwesomeIcons.heart,
                              title: stringConstants.flutter,
                            ),
                            CustomInterestCard(
                              icon: LineAwesomeIcons.heart,
                              title: stringConstants.flutter,
                            ),
                          ],
                        ),
                        Wrap(
                          children: [
                            CustomInterestCard(
                              icon: LineAwesomeIcons.heart,
                              title: stringConstants.flutter,
                            ),
                            CustomInterestCard(
                              icon: LineAwesomeIcons.heart,
                              title: stringConstants.flutter,
                            ),
                            CustomInterestCard(
                              icon: LineAwesomeIcons.heart,
                              title: stringConstants.flutter,
                            ),
                            CustomInterestCard(
                              icon: LineAwesomeIcons.heart,
                              title: stringConstants.flutter,
                            ),
                          ],
                        ),
                        context.emptySizedHeightBoxHigh
                      ],
                    ))
              ],
            ),
          ),
        ));
  }

  Text _headlineText(BuildContext context, String text) {
    return Text(text,
        style: context.textTheme.headline6!
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold));
  }
}



// Column(
//           children: [
//             Expanded(
//               child: CustomInterestCard(icon: Icons.add, title: "asd"),
//             ),
//             Expanded(
//               child: Container(color: Colors.red),
//             )
//           ],
//         )