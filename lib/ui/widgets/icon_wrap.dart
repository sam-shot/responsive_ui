// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_ui/ui/shared/colors.dart';
import 'package:responsive_ui/ui/widgets/custom_container.dart';

class IconWrap extends StatelessWidget {
  IconWrap({
    required this.iconPath,
    super.key,
  });
  String iconPath;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CustomContainer(
        color: Colors.white10,
        child: Image.asset(
          iconPath,
          color: kWhite,
          height: 25,
        ),
      ),
    );
  }
}