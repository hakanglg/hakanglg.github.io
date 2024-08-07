import 'package:url_launcher/url_launcher.dart';


extension StringExtension on String? {

  Future<void> launchURL() async {
    if (this == null || this!.isEmpty) {
      throw 'URL is empty or null';
    }
    final Uri _url = Uri.parse(this!);

    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }
}