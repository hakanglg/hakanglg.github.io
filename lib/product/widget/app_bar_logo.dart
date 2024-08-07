import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/product/utility/constants/color/color_constants.dart';

class HollowCircleWithLetter extends StatelessWidget {
  final String letter;
 
 

    const HollowCircleWithLetter({super.key, 
    required this.letter,
 
 
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HollowCirclePainter(
        circleColor: ColorConstants.instance.activeGreen,
      ),
      child: SizedBox(
        child: Center(
          child: Text(
            letter,
            style: context.general.textTheme.headlineSmall!.copyWith(
              color: ColorConstants.instance.activeGreen,
            ),
          ),
        ),
      ),
    );
  }
}

class HollowCirclePainter extends CustomPainter {
  final Color circleColor;

  HollowCirclePainter({required this.circleColor});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = circleColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 3;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(HollowCirclePainter oldDelegate) {
    return oldDelegate.circleColor != circleColor;
  }
}
