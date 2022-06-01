import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:porfolio_web/core/base/base_state.dart';

class AppBarActions extends StatelessWidget with BaseState {
  late final viewModel;
  AppBarActions({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        githubIconButto(),
        context.emptySizedWidthBoxLow,
        linkedinIconButton(),
        context.emptySizedWidthBoxLow,
        mailIconButton(),
        context.emptySizedWidthBoxLow,
      ],
    );
  }

  InkWell mailIconButton() {
    return InkWell(
      onTap: () {
        final url = 'mailto:${stringConstants.mailUrl}?';
        viewModel.launchInBrowser(url);
      },
      child: Icon(
        Icons.mail,
        color: colorConstants.black,
      ),
    );
  }

  InkWell linkedinIconButton() {
    return InkWell(
      onTap: () => viewModel.launchInBrowser(stringConstants.linkedinUrl),
      child: Icon(
        LineAwesomeIcons.linkedin_in,
        color: colorConstants.black,
      ),
    );
  }

  InkWell githubIconButto() {
    return InkWell(
      onTap: () => viewModel.launchInBrowser(stringConstants.githubUrl),
      child: Icon(
        LineAwesomeIcons.github,
        color: colorConstants.black,
      ),
    );
  }
}
