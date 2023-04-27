// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_ui/ui/shared/colors.dart';
import 'package:responsive_ui/ui/shared/text_styles.dart';


class CustomButton extends StatelessWidget {
  String text;

   CustomButton({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
          color: kPurple,
          borderRadius: BorderRadius.circular(18)),
      child: Text(
        text,
        style: h3,
      ),
    );
  }
}
