import 'package:ecn_app/main.dart';
import 'package:ecn_app/utils/widgets.dart';
import 'package:flutter/material.dart';

class VoterRegistrationScreen extends StatelessWidget {
  static const String ROUTE_NAME = '/voter_registration';
  const VoterRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Voter Registration"),
        centerTitle: true,
        leading: Icon(
          ECNApp.platform_isIOS
              ? Icons.arrow_back_ios_rounded
              : Icons.arrow_back_rounded,
        ),
      ),
      endDrawer: const Drawer(),
      body: Container(
        child: ListView(
          children: [
            voterRegistrationTiles(context,
                text: "How to Register as a Voter", onTap: () {}),
            voterRegistrationDivider(context),
            voterRegistrationTiles(context,
                text: "The voters' register", onTap: () {}),
            voterRegistrationDivider(context),
            voterRegistrationTiles(context,
                text: "Types of voters' registration", onTap: () {}),
            voterRegistrationDivider(context),
            voterRegistrationTiles(context,
                text: "How to register as a voter", onTap: () {}),
            voterRegistrationDivider(context),
          ],
        ),
      ),
    );
  }
}
