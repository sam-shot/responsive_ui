// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_ui/ui/shared/spacing.dart';
import 'package:responsive_ui/ui/shared/text_styles.dart';
import 'package:responsive_ui/ui/widgets/custom_container.dart';
import 'package:responsive_ui/ui/widgets/text_row.dart';

class AboutSection extends StatelessWidget {
  String about;

  AboutSection({
    super.key,
    required this.about,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          TextRow(
            prefix: "About",
            suffix: "Resume",
            prefixStyle: h2,
          ),
          verticalSpaceRegular,
          Text(
            about,
            style: p,
          )
        ],
      ),
    );
  }
}
