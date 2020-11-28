/*
Dart screen, exhibits the search screen for the cards
 */

/*
Update 0.:
- Created file
- Added update log
- Added stless class

Update 0.1.:
- Added title widget
- Added main widget
- Added "textFieldPersonalized" widget
- Added button widget

Update 0.12.:
- Made the button widget send the user to cards_found with the variable
- Added a method to replace spaces with +

Update 0.13.:
- Sending cardlist instead to cards_found.
 */

import 'package:card_searcher/models/card_list.dart';
import 'package:card_searcher/utilities/network_helper.dart';
import 'package:flutter/material.dart';

import 'cards_found.dart';

class CardSearch extends StatelessWidget {

  final cardSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {

    // TITLE
    Widget titleSection = Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blueAccent,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'MTG card lookup',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );

    // MAIN
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            titleSection,
            textFieldPersonalized(cardSearch, "Black lotus", "Card name.:", Icon(Icons.lens)),
            FlatButton(onPressed: () async{
              // https://stackoverflow.com/questions/53861302/passing-data-between-screens-in-flutter - For data between screens
              var requisicao = NetworkHelper(url:"https://api.magicthegathering.io/v1/cards?name=${removeSpace(cardSearch.text)}");
              var dados = CardList.fromJson(await requisicao.getData());
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CardsFound(cardList: dados.cardlist)));
                }, child: Text("Adicionar")),
          ],
        ),
      ),
    );
  }


  Widget textFieldPersonalized(TextEditingController controlador, String hint, String label, Icon icone) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(controller: controlador, decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          icon: icone
      ),),
    );
  }

  String removeSpace(String text){
    return text.replaceAll(" ", "+");
  }
}
