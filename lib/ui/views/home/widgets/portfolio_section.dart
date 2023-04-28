// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_ui/ui/shared/colors.dart';
import 'package:responsive_ui/ui/shared/spacing.dart';
import 'package:responsive_ui/ui/shared/text_styles.dart';
import 'package:responsive_ui/ui/views/home/home_view_model.dart';
import 'package:responsive_ui/ui/widgets/custom_container.dart';
import 'package:responsive_ui/ui/widgets/text_row.dart';

class PortfolioSection extends StatelessWidget {
  PortfolioSection({
    this.isMobile = false,
    required this.images,
    required this.model,
    super.key,
  });

  bool isMobile;
  List<String> images;
  HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          TextRow(
            prefix: "UI Portfolio",
            suffix: "See All",
            prefixStyle: h2,
          ),
          verticalSpaceRegular,
          isMobile
              ? Column(
                  children: [
                    Column(
                      children: [
                        CustomContainer(
                          padding: EdgeInsets.zero,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              images[0],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        verticalSpaceRegular,
                        CustomContainer(
                          color: kPurple,
                          padding: EdgeInsets.zero,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              images[1],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        verticalSpaceRegular,
                        CustomContainer(
                          color: kPurple,
                          padding: EdgeInsets.zero,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              images[2],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: PortfolioItem(image: images[0]),
                      ),
                      horizontalSpaceRegular,
                      Expanded(
                        child: PortfolioItem(image: images[1]),
                      ),
                      horizontalSpaceRegular,
                      Expanded(
                        child: PortfolioItem(image: images[2]),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

class PortfolioItem extends StatefulWidget {
  PortfolioItem({
    super.key,
    required this.image,
  });

  String image;

  @override
  State<PortfolioItem> createState() => _PortfolioItemState();
}

class _PortfolioItemState extends State<PortfolioItem> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          hover = true;
        });
      },
      onExit: (event) {
        setState(() {
          hover = false;
        });
      },
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: CustomContainer(
              padding: EdgeInsets.zero,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  widget.image,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          if (hover)
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: CustomContainer(
                color: Colors.black.withOpacity(0.7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Read More",
                      style: h3,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
