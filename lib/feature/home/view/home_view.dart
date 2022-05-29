import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:porfolio_web/core/base/base_state.dart';
import 'package:porfolio_web/core/component/row/my_row.dart';

import '../../about/view/about_view.dart';

class HomeView extends StatelessWidget with BaseState {
  final String _headlineText = "Hi, I'm Hakan.";
  final String _subtitle = "I'm a mobile developer in Turkey";
  final String _home = "Home";
  final String _about = "About";
  final String _skills = "Skills";
  final String _portfolio = "Portfolio";
  final String _discoverMore = "DISCOVER MORE";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBarSection(context),
      body: LayoutBuilder(
        builder: (context, constraint) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  SizedBox(
                      height: constraint.maxHeight,
                      child: _WelcomeSection(context)),
                  Container(
                    height: constraint.maxHeight,
                    color: Colors.white,
                    child: const AboutView(),
                  ),
                  Container(
                    height: constraint.maxHeight,
                    color: Colors.red,
                  ),
                  Container(
                    height: constraint.maxHeight,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Stack _WelcomeSection(BuildContext context) {
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
            Column(
              children: [
                Text(_discoverMore),
                const Icon(LineAwesomeIcons.angle_down)
              ],
            ),
          ],
        ),
      ),
    ]);
  }

  Row _ButtonsSection(BuildContext context) {
    return Row(
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
      title: _TitleSection(context),
      actions: [_ActionSection(context)],
    );
  }

  Wrap _TitleSection(BuildContext context) {
    return Wrap(
      spacing: 30,
      children: [
        Text(
          _home,
          style: TextStyle(
              color: colorConstants.black, fontWeight: FontWeight.w900),
        ),
        InkWell(
            // onTap: () {
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const AboutView(),
            //       ));
            // },
            child: Text(_about)),
        Text(_skills),
        Text(_portfolio)
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
        context.emptySizedWidthBoxLow,
        Icon(
          Icons.email,
          color: colorConstants.black,
        ),
        context.emptySizedWidthBoxLow,
      ],
    );
  }
}
