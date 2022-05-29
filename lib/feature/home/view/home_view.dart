import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:porfolio_web/core/base/base_state.dart';
import 'package:porfolio_web/core/component/row/my_row.dart';

class HomeView extends StatelessWidget with BaseState {
  final String _headlineText = "Hi, I'm Hakan.";
  final String _subtitle = "I'm a mobile developer in Turkey";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBarSection(context),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(children: [
              _BackgroundImage(),
              MyRow(
                child: Expanded(
                    child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    context.emptySizedHeightBoxHigh,
                    _nameTitleText(context),
                    context.emptySizedHeightBoxLow,
                    _SubtitleText(context),
                    context.emptySizedHeightBoxNormal,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                                minimumSize: const Size(150, 50),
                                maximumSize: const Size(150, 50)),
                            onPressed: () {},
                            child: Text(
                              "Contact Me",
                              style: context.textTheme.bodyText2,
                            )),
                        context.emptySizedWidthBoxLow,
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Hire Me",
                              style: context.textTheme.bodyText2,
                            )),
                      ],
                    ),
                  ],
                )),
              ),
            ]),
          ),
          const Spacer()
        ],
      ),
    );
  }

  Container _BackgroundImage() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: .7,
          image: AssetImage("images/img_wallpaper.jpg"),
        ),
      ),
    );
  }

  // Row(
  //                     children: [
  //                       Expanded(
  //                           child: Column(
  //                         children: [
  //                           context.emptySizedHeightBoxHigh,
  //                           _nameTitleText(context),
  //                           context.emptySizedHeightBoxLow,
  //                           _SubtitleText(context),
  //                         ],
  //                       )),
  //                     ],
  //                   ),

  Text _SubtitleText(BuildContext context) =>
      Text(_subtitle, style: context.textTheme.subtitle2);

  Text _nameTitleText(BuildContext context) {
    return Text(
      _headlineText,
      style: context.textTheme.headline3,
    );
  }

  AppBar _AppBarSection(BuildContext context) {
    return AppBar(
      title: _TitleSection(),
      actions: [_ActionSection(context)],
    );
  }

  Wrap _TitleSection() {
    return Wrap(
      spacing: 30,
      children: [
        Text(
          "Work",
          style: TextStyle(
              color: colorConstants.black, fontWeight: FontWeight.w900),
        ),
        const Text("Say Hello"),
        const Text("About")
      ],
    );
  }

  Row _ActionSection(BuildContext context) {
    return Row(
      children: [
        Icon(
          LineAwesomeIcons.linkedin_in,
          color: colorConstants.black,
        ),
        context.emptySizedWidthBoxLow,
        Icon(
          LineAwesomeIcons.github,
          color: colorConstants.black,
        ),
        context.emptySizedWidthBoxLow
      ],
    );
  }
}
