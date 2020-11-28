/*
Dart screen, represents the found cards via the API call
 */

/*
Update 0.:
- Created file
- Added update log

Update 0.1.:
- Added stf class

Update 0.12.:
- Importing data from card_search.dart
- Added method getCards

Update 0.13.:
- Removed method getCards, now handled by card_search.dart
 */

import 'package:card_searcher/models/card_list.dart';
import 'package:card_searcher/utilities/network_helper.dart';
import 'package:flutter/material.dart';

class CardsFound extends StatefulWidget {
  final CardList cardList;
  CardsFound({Key key, @required this.cardList}) : super(key: key);

  @override
  _CardsFoundState createState() => _CardsFoundState();
}

class _CardsFoundState extends State<CardsFound> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Encontrados. Selecione um')),
      body: ListView(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index){
                for(final e in widget.cardList.cardlist){

                }
                return ListTile(

                  title: Text(widget.cardList.cardlist[index].name),
                );
              },
              //itemCount: widget.cardList.length,
            ),
          )
        ],
      ),
    );
  }

}

class CardsFound2 extends StatelessWidget {
  final CardList cardList;
  CardsFound2({Key key, @required this.cardList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Encontrados. Selecione um')),
      body: ListView(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(cardList.cardlist[index].name),
                );
              },
              itemCount: cardList.cardlist.length,
            ),
          )
        ],
      ),
    );
  }
}

// TODO Understand why it's not working. Trying to send cardList and make a list of all cards to be shown at the screen, doesn't seem to be working for unknown reasons.
