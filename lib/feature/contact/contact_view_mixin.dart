import 'package:flutter/material.dart';
import 'package:portfolio_me/feature/contact/contact_view.dart';
import 'package:url_launcher/url_launcher.dart';

mixin ContactViewMixin on State<ContactView> {

  Future<void> sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'hakangolge@icloud.com',

    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }
}