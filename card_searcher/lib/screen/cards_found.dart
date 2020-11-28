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
 */

import 'package:card_searcher/models/card_list.dart';
import 'package:card_searcher/utilities/network_helper.dart';
import 'package:flutter/material.dart';

class CardsFound extends StatefulWidget {
  final String text;
  CardsFound({Key key, @required this.text}) : super(key: key);

  @override
  _CardsFoundState createState() => _CardsFoundState();
}

class _CardsFoundState extends State<CardsFound> {
  var _cardlist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Encontrados')),
      body: Center(
        child: Text(
          widget.text,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }



  Future<CardList> getCards(String name) async {
    var requisicao = NetworkHelper(url:"https://api.magicthegathering.io/v1/cards?name=${name}");
    var dados = CardList.fromJson(await requisicao.getData());
  }



}
