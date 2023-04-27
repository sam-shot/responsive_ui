// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_ui/ui/shared/colors.dart';
import 'package:responsive_ui/ui/shared/spacing.dart';
import 'package:responsive_ui/ui/shared/text_styles.dart';
import 'package:responsive_ui/ui/widgets/achievement_widget.dart';
import 'package:responsive_ui/ui/widgets/custom_button.dart';

import '../../../widgets/custom_container.dart';

class DetailsSection extends StatelessWidget {
  DetailsSection({
    this.isMobile = false,
    required this.clients,
    required this.projects,
    required this.experience,
    super.key,
  });
  bool isMobile;
  String experience;
  String projects;
  String clients;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (isMobile) verticalSpaceRegular,
        CustomContainer(
          padding: const EdgeInsets.all(15),
          child: Stack(
            children: [
              Text(
                "Bringing Your Ideas \nTo Life Through \nUI Design",
                style: isMobile ? h1Mobile : h1,
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: CustomButton(
                    text: "Hire Me",
                  ))
            ],
          ),
        ),
        verticalSpaceRegular,
        isMobile
            ? Column(
                children: [
                  SizedBox(
                    width: width / 1.5,
                    child: Achievement(
                      title: "$experience+",
                      subTitle: "Years Experience",
                      color: kBlue,
                    ),
                  ),
                  verticalSpaceRegular,
                  SizedBox(
                    width: width / 1.5,
                    child: Achievement(
                      title: "$projects+",
                      subTitle: "Handled Projects",
                      textColor: kBlackDark,
                      color: kYellow,
                    ),
                  ),
                  verticalSpaceRegular,
                  SizedBox(
                    width: width / 1.5,
                    child: Achievement(
                      title: "$clients+",
                      subTitle: "Clients",
                      color: kPink,
                    ),
                  )
                ],
              )
            : Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Achievement(
                        title: "$experience+",
                        subTitle: "Years Experience",
                        color: kBlue,
                      ),
                    ),
                    horizontalSpaceRegular,
                    Expanded(
                      child: Achievement(
                        title: "$projects+",
                        subTitle: "Handled Projects",
                        color: kYellow,
                        textColor: kBlackDark,
                      ),
                    ),
                    horizontalSpaceRegular,
                    Expanded(
                      child: Achievement(
                        title: "$clients+",
                        subTitle: "Clients",
                        color: kPink,
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
