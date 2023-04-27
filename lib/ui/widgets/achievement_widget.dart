// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_ui/ui/shared/colors.dart';
import 'package:responsive_ui/ui/shared/text_styles.dart';
import 'package:responsive_ui/ui/widgets/custom_container.dart';

class Achievement extends StatelessWidget {
  String title;
  String subTitle;
  Color color;
  Color textColor;

  Achievement({
    required this.title,
    required this.subTitle,
    required this.color,
     this.textColor = kWhite,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: color,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: h1.copyWith(color: textColor),
          ),
          Text(
            subTitle,
            style: p.copyWith(color: textColor),
          ),
        ],
      ),
    );
  }
}
