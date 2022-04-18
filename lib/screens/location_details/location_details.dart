import 'package:flutter/material.dart';

import '../../models/location.dart';
import 'image_banner.dart';
import 'text_section.dart';

class LocationDetails extends StatelessWidget {
  final int _locationId;

  const LocationDetails(this._locationId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(_locationId);
    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 00, 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner(location.imagePath),
              ...textSections(location),
            ],
          ),
        ));
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
