import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../models/screen_arguments.dart';
import 'routes.dart' as routes;
import 'screens/home_screen/home_screen.dart';
import 'screens/location_details/location_details.dart';
import 'screens/location_list/location_list.dart';
import 'screens/login/user_login.dart';
import 'screens/register/user_registration.dart';

class RouteGenerator {
  static _routePage(Widget screen, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          builder: (context) => screen, settings: settings);
    } else {
      return CupertinoPageRoute(
          builder: (context) => screen, settings: settings);
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    Widget screen;
    switch (settings.name) {
      case routes.kUserLoginRoute:
        screen = const UserLogin();
        return _routePage(screen, settings);
      case routes.kUserRegistrationRoute:
        screen = const UserRegistration();
        return _routePage(screen, settings);
      case routes.kLocationListRoute:
        screen = const Locations('Locations');
        return _routePage(screen, settings);
      case routes.kHomeScreenRoute:
        screen = const HomeScreen();
        return _routePage(screen, settings);
      case routes.kLocationDetailsRoute:
        var arguments = settings.arguments as ScreenArguments;
        screen = LocationDetails(arguments.id);
        return _routePage(screen, settings);
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(title: const Text("404")),
            body: const Center(
              child: Text("No defined screen found"),
            ),
          ),
        );
    }
  }
}
