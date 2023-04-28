import 'package:flutter/material.dart';
import 'package:responsive_ui/ui/shared/colors.dart';
import 'package:responsive_ui/ui/shared/responsive_class.dart';
import 'package:responsive_ui/ui/shared/spacing.dart';
import 'package:responsive_ui/ui/views/home/home_view_model.dart';
import 'package:responsive_ui/ui/views/home/widgets/about_section.dart';
import 'package:responsive_ui/ui/views/home/widgets/details_section.dart';
import 'package:responsive_ui/ui/views/home/widgets/personal_section.dart';
import 'package:responsive_ui/ui/views/home/widgets/portfolio_section.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onViewModelReady: (viewModel) {
        viewModel.init();
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: kBlack,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: model.loading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: kBlackLight,
                      strokeWidth: 4,
                    ),
                  )
                : ResponsiveClass(
                    mobile: SingleChildScrollView(
                      child: Column(
                        children: [
                          PersonalSection(
                            isMobile: true,
                            name: model.user!.name,
                            country: model.user!.country,
                          ),
                          DetailsSection(
                            isMobile: true,
                            clients: model.user!.clients,
                            experience: model.user!.yearsExperience,
                            projects: model.user!.allProjects,
                          ),
                          verticalSpaceRegular,
                          PortfolioSection(
                            model: model,
                            isMobile: true,
                            images: model.user!.portfolio,
                          ),
                          verticalSpaceRegular,
                          AboutSection(
                            about: model.user!.about,
                          ),
                        ],
                      ),
                    ),
                    tablet: SingleChildScrollView(
                      child: Column(
                        children: [
                          PersonalSection(
                            isTablet: true,
                            name: model.user!.name,
                            country: model.user!.country,
                          ),
                          verticalSpaceRegular,
                          SizedBox(
                              height: 350,
                              child: DetailsSection(
                                clients: model.user!.clients,
                                experience: model.user!.yearsExperience,
                                projects: model.user!.allProjects,
                              )),
                          verticalSpaceRegular,
                          SizedBox(
                              height: 280,
                              child: PortfolioSection(
                                model: model,
                                images: model.user!.portfolio,
                              )),
                          verticalSpaceRegular,
                          AboutSection(
                            about: model.user!.about,
                          ),
                        ],
                      ),
                    ),
                    desktop: Column(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Row(
                            children: [
                              Expanded(
                                  child: DetailsSection(
                                clients: model.user!.clients,
                                experience: model.user!.yearsExperience,
                                projects: model.user!.allProjects,
                              )),
                              horizontalSpaceRegular,
                              Expanded(
                                  child: PersonalSection(
                                name: model.user!.name,
                                country: model.user!.country,
                              ))
                            ],
                          ),
                        ),
                        verticalSpaceRegular,
                        Expanded(
                          flex: 6,
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: PortfolioSection(
                                    model: model,
                                    images: model.user!.portfolio,
                                  )),
                              horizontalSpaceRegular,
                              Expanded(
                                  flex: 2,
                                  child: AboutSection(
                                    about: model.user!.about,
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
