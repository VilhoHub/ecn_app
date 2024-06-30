import 'package:ecn_app/main.dart';
import 'package:ecn_app/presentation/resources/string_manager.dart';
import 'package:ecn_app/utils/widgets.dart';
import 'package:flutter/material.dart';

class VoterRegistrationScreen extends StatelessWidget {
  static const String ROUTE_NAME = AppStrings.voterRegRoute;
  const VoterRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.voterRegTitle),
        leading: IconButton(
          icon: androidIOSTrailing(),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      endDrawer: const Drawer(),
      body: ListView(
        children: [
          voterRegistrationTiles(
            context,
            text: AppStrings.howToRegister,
            onTap: () {},
          ),
          voterRegistrationDivider(context),
          voterRegistrationTiles(
            context,
            text: AppStrings.votersReg,
            onTap: () {},
          ),
          voterRegistrationDivider(context),
          voterRegistrationTiles(
            context,
            text: AppStrings.typesOfVotersReg,
            onTap: () {},
          ),
          voterRegistrationDivider(context),
        ],
      ),
    );
  }
}
