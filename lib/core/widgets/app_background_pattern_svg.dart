import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBackgroundPatternSvg extends StatelessWidget {
  final String assetPath; 
  final double angle;
  final double size; 
  final double? top;
  final double? left;
  final double? bottom;
  final double? right;
  final Color? color;

  const AppBackgroundPatternSvg({
    super.key,
    required this.assetPath,
    required this.angle,
    required this.size,
    this.top,
    this.left,
    this.bottom,
    this.right,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      bottom: bottom,
      right: right,
      child: Transform.rotate(
        angle: angle,
        child: SvgPicture.asset(
          assetPath,
          height: size,
          width: size,
          colorFilter: color != null
              ? ColorFilter.mode(color!, BlendMode.srcIn)
              : null,
        ),
      ),
    );
  }
}
