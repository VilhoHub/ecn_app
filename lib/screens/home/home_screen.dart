import 'package:ecn_app/presentation/resources/colour_manager.dart';
import 'package:ecn_app/presentation/resources/font_manager.dart';
import 'package:ecn_app/presentation/resources/string_manager.dart';
import 'package:ecn_app/presentation/resources/value_manager.dart';
import 'package:ecn_app/screens/home/voter_registration_screen.dart';
import 'package:ecn_app/utils/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String ROUTE_NAME = AppStrings.homeRoute;
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        endDrawer: const Drawer(),
        body: SizedBox(
          width: mediaQuery.width,
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: mediaQuery.height * AppPadding.p0_01,
                  ),
                  decoration: BoxDecoration(
                    color: ColourManager.primary,
                    borderRadius: BorderRadius.circular(AppRadius.r10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.p15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: mediaQuery.width,
                        ),
                        infoBoxText(
                          AppStrings.totalNumber,
                          fontSize: FontSize.f16,
                        ),
                        infoBoxText(
                          '395.8K',
                          fontSize: FontSize.f45,
                        ),
                        infoBoxText(
                          '+35% month over month',
                          fontWeight: FontWeightManager.regular,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: ColourManager.item.shade300,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: AppPadding.p25),
                            ),
                            child: Text(
                              AppStrings.view,
                              style: TextStyle(
                                color: ColourManager.black,
                                fontSize: FontSize.f16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: ValueManager.v3,
                    ),
                    children: [
                      homeCard(
                        AppStrings.voterInfo,
                        const Color(0xFFFEBB57),
                        () {},
                      ),
                      homeCard(
                        AppStrings.voterReg,
                        const Color(0xFFB3E1D9),
                        () {
                          Navigator.pushNamed(
                            context,
                            VoterRegistrationScreen.ROUTE_NAME,
                          );
                        },
                      ),
                      homeCard(
                        AppStrings.candidateInfo,
                        const Color(0xFFF397D9),
                        () {},
                      ),
                      homeCard(
                        AppStrings.elections,
                        const Color(0xFF06A982),
                        () {},
                      ),
                      homeCard(
                        AppStrings.voterEdu,
                        const Color(0xFFDADADA),
                        () {},
                      ),
                      homeCard(
                        AppStrings.latestUpdates,
                        const Color(0xFF6CB43F),
                        () {},
                      ),
                      homeCard(
                        AppStrings.regPoints,
                        const Color(0xFFF17171),
                        () {},
                      ),
                      homeCard(
                        AppStrings.mediaReleases,
                        const Color(0xFFFFE145),
                        () {},
                      ),
                      homeCard(
                        AppStrings.electionRes,
                        const Color(0xFFB3E1D9),
                        () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
