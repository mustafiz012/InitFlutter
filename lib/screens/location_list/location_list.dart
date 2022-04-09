import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttering/app.dart';
import '../../models/screen_arguments.dart';

import '../../models/location.dart';

class Locations extends StatelessWidget {
  final String _title;

  Locations(this._title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: ListView(
        children: locations
            .map((l) => GestureDetector(
                  child: Text(l.name),
                  onTap: () => _onLocationTap(context, l.id),
                ))
            .toList(),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationId) {
    log(locationId);
    Navigator.pushNamed(context, LocationDetailsRoute,
        arguments: ScreenArguments(locationId, ""));
  }
}
