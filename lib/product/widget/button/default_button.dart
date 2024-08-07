import 'package:flutter/material.dart';
import 'package:portfolio_me/product/utility/constants/color/color_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class DefaultButton extends StatefulWidget {
  const DefaultButton({Key? key, this.onPressed, this.text, this.url}) : super(key: key);

  final void Function()? onPressed;
  final String? text;
  final String? url;



  @override
  _DefaultButtonState createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  bool isHovered = false;


  void _launchURL() async {
    final Uri _url = Uri.parse(widget.url?? '');

    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: isHovered ? ColorConstants.instance.activeWhite : ColorConstants.instance.activeGreen,
          ),
          borderRadius: BorderRadius.circular(0),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: isHovered ? Colors.white : ColorConstants.instance.activeGreen, backgroundColor: Colors.transparent,
            elevation: isHovered ? 8 : 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          onPressed: widget.onPressed ?? () {
            _launchURL();
          },
          child: Text(
            widget.text ?? "",
            style: TextStyle(
              color: isHovered ? Colors.white : ColorConstants.instance.activeGreen,
            ),
          ),
        ),
      ),
    );
  }
}
