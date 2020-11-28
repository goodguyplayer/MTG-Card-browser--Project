import 'dart:convert';
import 'package:http/http.dart' as http; // https://pub.dev/packages/http
import 'package:flutter/foundation.dart';

/*
Update 0.:
- Class created
- added vars
- added getData() method
 */
class NetworkHelper{
  final String url;
  NetworkHelper({this.url});

  Future getData() async{
    http.Response response = await http.get(url);
    if(response.statusCode == 200) {
      //Resultado da requisição
      return jsonDecode(response.body);
    }
    else{
      print(response.statusCode);
      return null;
    }
  }
}