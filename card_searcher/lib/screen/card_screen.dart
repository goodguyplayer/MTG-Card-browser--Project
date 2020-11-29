/*
Dart screen, displays the found card at a higher resolution.
That is, if the card was found. API can be incomplete and return a null.
 */

/*
Update 0.:
- Created file
- Added desc of what it is
- Added update log.

Update 0.1.:
- Added Stateless widget class
- Imported packages

Update 0.11.:
- Added vars for importing data
- Changed widget to display image

 */

import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  final String imageUrl;
  CardScreen({Key key, @required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            new Container(
              child: new Image.network(
                imageUrl,
                //height: 60.0,
                fit: BoxFit.cover,
              ),
            ),
      ],
            ),
          ),

        );
  }
}


