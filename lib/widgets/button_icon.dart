import 'package:flutter/material.dart';
import 'package:house/utils/color.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon(
      {Key? key, required this.child, this.height, this.width, this.padding})
      : super(key: key);
  final Widget child;
  final EdgeInsets? padding;
  final double? width, height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: COLOR_WHITE,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: COLOR_GREY.withAlpha(40), width: 2),
      ),
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Center(child: child),
    );
  }
}
