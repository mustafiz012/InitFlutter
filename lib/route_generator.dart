import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../models/screen_arguments.dart';

import 'screens/location_details/location_details.dart';
import 'screens/location_list/location_list.dart';

const LocationsRoute = '/';
const LocationDetailsRoute = '/location_details';

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
      case LocationsRoute:
        screen = Locations('Locations');
        return _routePage(screen, settings);
      case LocationDetailsRoute:
        var arguments = settings.arguments as ScreenArguments;
        screen = LocationDetails(arguments.id);
        return _routePage(screen, settings);
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(title: const Text("404")),
            body: const Center(
              child: Text("Sayfa Bulunamadı"),
            ),
          ),
        );
    }
  }
}
