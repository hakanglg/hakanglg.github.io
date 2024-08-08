import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/feature/contact/contact_view_mixin.dart';
import 'package:portfolio_me/product/base/base_state.dart';
import 'package:portfolio_me/product/widget/button/default_button.dart';
import 'package:portfolio_me/product/widget/column/padding_vertical.dart';
import 'package:portfolio_me/product/widget/row/padding_horizontal.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactView extends StatefulWidget{
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView>  with  ContactViewMixin, BaseState  {
  @override
  Widget build(BuildContext context) {
    return PaddingHorizontal(
      child: PaddingVertical(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "04. What's Next?",
                style: context.general.textTheme.bodySmall!.copyWith(
                  color: colorConstants.activeGreen,
                ),
              ),
              context.sized.emptySizedHeightBoxLow,
              Text(
                "Get In Touch",
                style: context.general.textTheme.bodyLarge!.copyWith(
                  color: colorConstants.white,
                ),
              ),
              context.sized.emptySizedHeightBoxNormal,
              DefaultButton(text: 'Contact Me',onPressed: sendEmail,)
            ]),
      ),
    );
  }
}
