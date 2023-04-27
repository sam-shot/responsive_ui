// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_ui/ui/shared/assets.dart';
import 'package:responsive_ui/ui/shared/colors.dart';
import 'package:responsive_ui/ui/shared/spacing.dart';
import 'package:responsive_ui/ui/shared/text_styles.dart';
import 'package:responsive_ui/ui/widgets/custom_container.dart';
import 'package:responsive_ui/ui/widgets/text_row.dart';

class PersonalSection extends StatelessWidget {
  String country;
  String name;

  PersonalSection({
    required this.name,
    required this.country,
    this.isMobile = false,
    this.isTablet = false,
    super.key,
  });
  bool isMobile;
  bool isTablet;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainer(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(children: [
                TextSpan(text: "Bim", style: h3.copyWith(color: kGrey)),
                TextSpan(text: "Graph", style: h3),
              ]),
            ),
            IconButton(
                splashRadius: 30,
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: kWhite,
                ))
          ],
        )),
        verticalSpaceRegular,
        isMobile
            ? Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: CustomContainer(
                      color: kPurple,
                      padding: EdgeInsets.zero,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          person,
                          height: 350,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  verticalSpaceRegular,
                  CustomContainer(
                    child: TextRow(prefix: "Name :", suffix: name),
                  ),
                  verticalSpaceRegular,
                  CustomContainer(
                    child: Column(
                      children: [
                        TextRow(prefix: "Based in :", suffix: country),
                        Image.asset(
                          map,
                          height: 100,
                          fit: BoxFit.fitHeight,
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceRegular,
                  CustomContainer(
                    child: Row(
                      children: const [
                        ImageIcon(
                          AssetImage(twitter),
                          color: kWhite,
                        )
                      ],
                    ),
                  )
                ],
              )
            : isTablet
                ? SizedBox(
                    height: 300,
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomContainer(
                            color: kPurple,
                            padding: EdgeInsets.zero,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                person,
                                height: 350,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        horizontalSpaceRegular,
                        Expanded(
                            child: Column(
                          children: [
                            CustomContainer(
                              child: TextRow(
                                  prefix: "Name :", suffix: name),
                            ),
                            verticalSpaceRegular,
                            Expanded(
                              child: CustomContainer(
                                child: Column(
                                  children: [
                                    TextRow(
                                        prefix: "Based in :",
                                        suffix: country),
                                    Expanded(
                                      child: Image.asset(
                                        map,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            verticalSpaceRegular,
                            CustomContainer(
                              child: Row(
                                children: const [
                                  ImageIcon(
                                    AssetImage(twitter),
                                    color: kWhite,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  )
                : Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomContainer(
                            color: kPurple,
                            padding: EdgeInsets.zero,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                person,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        horizontalSpaceRegular,
                        Expanded(
                          child: Column(
                            children: [
                              CustomContainer(
                                child: TextRow(
                                    prefix: "Name :", suffix: name),
                              ),
                              verticalSpaceRegular,
                              Expanded(
                                child: CustomContainer(
                                  child: Column(
                                    children: [
                                      TextRow(
                                          prefix: "Based in :",
                                          suffix: country),
                                      Expanded(
                                        child: Image.asset(
                                          map,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              verticalSpaceRegular,
                              CustomContainer(
                                child: Row(
                                  children: const [
                                    ImageIcon(
                                      AssetImage(twitter),
                                      color: kWhite,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
      ],
    );
  }
}
