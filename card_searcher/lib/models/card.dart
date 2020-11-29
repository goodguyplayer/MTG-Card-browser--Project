/*
Class made to represent a card.
Includes name, type, imageUrl
 */

/*
Update 0.:
- Added description
- Added update log
- Created class

Update 0.1.:
- Added vars
- Added getter
- Added named constructor - fromJson

Update 0.12.:
- fromJson constructor update - Verifies for null images
 */

class Card{
  // Vars
  var _name;
  var _type;
  var _imageUrl;

  // Getters
  get name => _name;
  get type => _type;
  get imageUrl => _imageUrl;



// Named constructor - fromJson
  Card.fromJson(Map<String, dynamic> json){
    _name = json['name'];
    _type = json['type'];
    if (json['imageUrl'] != null){
      _imageUrl = json['imageUrl'];
    } else {
      _imageUrl = "https://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=0&type=card";
    }
  }


}