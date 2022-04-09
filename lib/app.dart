import 'package:flutter/material.dart';

import 'screens/location_details/location_details.dart';
import 'style.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LocationDetails(),
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                toolbarTextStyle: const TextTheme().bodyText2,
                titleTextStyle: const TextTheme().headline6
            ),
          textTheme: TextTheme(
            titleMedium: TitleTextStyle,
            bodyMedium: Body1TextStyle
          )
        )
    );
  }
}
