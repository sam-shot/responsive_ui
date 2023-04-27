// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_ui/ui/shared/colors.dart';

class CustomContainer extends StatelessWidget {
   CustomContainer({
    required this.child,
    this.padding = const EdgeInsets.all(10),
    this.color =  kBlackLight,
    super.key,
  });

  Widget child;
  EdgeInsets padding;
  Color color;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child
    );
  }
}
