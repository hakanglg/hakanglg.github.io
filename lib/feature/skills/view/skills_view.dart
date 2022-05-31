import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:porfolio_web/core/component/column/my_column.dart';
import 'package:porfolio_web/core/component/row/my_row.dart';

import '../../../core/base/base_state.dart';
import '../../../product/components/linear_percent_indicator/linear_percent_indicator.dart';

class SkillsView extends StatelessWidget with BaseState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(stringConstants.skills,
            style: context.textTheme.headline5!.copyWith(color: Colors.white)),
      ),
      body: MyColumn(
        child: MyRow(
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          LinearPercentWithText(
                            headline: stringConstants.flutter,
                            percent: .95,
                            text: "%95",
                          ),
                          LinearPercentWithText(
                            headline: stringConstants.swift,
                            percent: .75,
                            text: "%75",
                          ),
                          LinearPercentWithText(
                            headline: stringConstants.fireBase,
                            percent: .7,
                            text: "%80",
                          ),
                          LinearPercentWithText(
                            headline: stringConstants.javascript,
                            percent: .7,
                            text: "%70",
                          ),
                          LinearPercentWithText(
                            headline: stringConstants.python,
                            percent: .7,
                            text: "%70",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          LinearPercentWithText(
                            headline: stringConstants.leaderShip,
                            percent: .85,
                            text: "%85",
                          ),
                          LinearPercentWithText(
                            headline: stringConstants.creativeThinking,
                            percent: .95,
                            text: "%95",
                          ),
                          LinearPercentWithText(
                            headline: stringConstants.problemSolving,
                            percent: .8,
                            text: "%80",
                          ),
                          LinearPercentWithText(
                            headline: stringConstants.timeManagement,
                            percent: .9,
                            text: "%90",
                          ),
                          LinearPercentWithText(
                            headline: stringConstants.teamWork,
                            percent: .75,
                            text: "%75",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
