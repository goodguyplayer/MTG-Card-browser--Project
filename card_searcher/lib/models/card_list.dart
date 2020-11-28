/*
Model made to represent the list of cards. Might be used?
 */

/*
Update 0.:
- Added description
- Added update log
- Created class

Update 0.1.:
- Added var
- Added getter and setter
- Added named constructor - fromJson
- imported card
 */

import 'card.dart';

class CardList{

  // VAR
  var _cardlist = new List();

  // Getter
  get cardlist => _cardlist;

  // Setter
  set cardlist(value) {
    _cardlist = value;
  }

  // Named constructor - fromJson
  CardList.fromJson(Map<String, dynamic> json){

    for (var i=0; i<json['cards'].length; i++) {
      _cardlist.add(Card.fromJson(json['cards'][i]));
    }

  }
}