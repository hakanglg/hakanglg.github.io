import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NestedBorders extends StatelessWidget {
  final double width;
  final double height;
  final Color frontBorderColor;
  final Color frontBackgroundColor;
  final Color backBorderColor;
  final double borderRadius;
  final double offset;
  final IconData? icon; // Nullable to support either icon or SVG
  final String? svgAsset; // Optional parameter for SVG
  final double borderWidth;
  final double iconSize;

  const NestedBorders({
    Key? key,
    this.width = 300,
    this.height = 200,
    this.frontBorderColor = Colors.cyan,
    this.frontBackgroundColor = Colors.white,
    this.backBorderColor = Colors.cyanAccent,
    this.borderRadius = 20,
    this.offset = 20,
    this.icon,
    this.svgAsset,
    this.borderWidth = 1.0,
    this.iconSize = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          // Back border
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: width - offset,
              height: height - offset,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: backBorderColor, width: borderWidth),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
          ),
          // Front border
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: width - offset,
              height: height - offset,
              decoration: BoxDecoration(
                color: frontBackgroundColor,
                border: Border.all(color: frontBorderColor, width: borderWidth),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: Center(
                child: icon != null
                    ? Icon(
                  icon,
                  size: iconSize,
                  color: Colors.white,
                )
                    : svgAsset != null
                    ? SvgPicture.asset(
                  svgAsset!,
                  width: iconSize,
                  height: iconSize,
                  color: Colors.white,
                )
                    : SizedBox.shrink(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}