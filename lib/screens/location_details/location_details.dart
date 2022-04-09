import 'package:flutter/material.dart';

import 'image_banner.dart';
import 'text_section.dart';

class LocationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Init Flutter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner("assets/images/test.jpeg"),
            TextSection('Bangla', 'Bangla is my mother tongue'),
            TextSection('English', 'English is my second Language'),
            TextSection('Others', 'I do not understand any other languages')
          ],
        ));
  }
}
