import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final double? radius;
  final Color? backgroundColor;
  RoundedContainer({
    required this.child, 
    this.radius,
    this.backgroundColor,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 5),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
        decoration: BoxDecoration(
          color: backgroundColor?? context.appColors.buttonBackground,
          borderRadius: BorderRadius.circular(radius?? 20),
        ),
        child: child);
  }
}
