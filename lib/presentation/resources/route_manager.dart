import 'package:ecn_app/main.dart';
import 'package:ecn_app/presentation/resources/asset_manager.dart';
import 'package:ecn_app/presentation/resources/string_manager.dart';
import 'package:ecn_app/screens/home/home_screen.dart';
import 'package:ecn_app/screens/home/voter_registration_screen.dart';
import 'package:ecn_app/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String homeRoute = HomeScreen.ROUTE_NAME;
  static const String voterRegistrationRoute =
      VoterRegistrationScreen.ROUTE_NAME;
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.voterRegistrationRoute:
        return MaterialPageRoute(
            builder: (_) => const VoterRegistrationScreen());

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: androidIOSTrailing(),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageAssets.notFound,
                ),
                const Text(AppStrings.notFound)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
