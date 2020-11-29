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

Update 0.14.:
- Changed widget, now displays found cards and a button to click so the user can see a bigger image.
- Removed the previous To do. Thanks Zanini for the help!

Update 0.15.:
- Pushing image link to CardScreen

 */

import 'package:card_searcher/models/card_list.dart';
import 'package:card_searcher/screen/card_screen.dart';
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
      body: ListView.builder(
        itemBuilder: (context, index){
          print(cardList.cardlist.toString());
          return ListTile(
            title: Text(cardList.cardlist[index].name),
            subtitle: Text(cardList.cardlist[index].type),
            leading: FlatButton(onPressed: () async{
              print('Oh hi there' + cardList.cardlist[index].name);
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CardScreen(imageUrl: cardList.cardlist[index].imageUrl)));
            }, child: Text("Ver imagem")),
          );
        },
        itemCount: cardList.cardlist.length,
      ),
    );
  }
}