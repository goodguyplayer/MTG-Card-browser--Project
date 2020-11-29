/*
Nothing special here, just tests.
 */

import 'package:card_searcher/models/card_list.dart';
import 'package:card_searcher/utilities/network_helper.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  var _dados = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Minhas Requisições"),),
      body: Text(_dados),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.send),
        onPressed: () async{
          var requisicao = NetworkHelper(url:"https://api.magicthegathering.io/v1/cards?name=black+lotus");
          var dados = CardList.fromJson(await requisicao.getData());

          for(final e in dados.cardlist){
            //
            var currentElement = e;
            print("Card name.: ${e.name}");
            print("Card type.: ${e.type}");
            print("Card image.: ${e.imageUrl}");
            print("---------------------------------------------------------");
          }


        },
      ),
    );
  }
}
