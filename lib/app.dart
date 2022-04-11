import 'package:flutter/material.dart';

import 'route_generator.dart';
import 'style.dart';

const LocationsRoute = '/';
const LocationDetailsRoute = '/location_details';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.routeGenerator,
        theme: _theme());
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
            toolbarTextStyle: const TextTheme().bodyText2,
            titleTextStyle: const TextTheme().headline6),
        textTheme: const TextTheme(
            titleMedium: TitleTextStyle, bodyMedium: Body1TextStyle));
  }
}
