import 'package:flutter/material.dart';

import 'route_generator.dart';
import 'routes.dart' as routes;
import 'style.dart';

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
            titleLarge: TitleTextStyle,
            titleMedium: Body1TextStyle,
            bodyMedium: Body1TextStyle));
  }
}
