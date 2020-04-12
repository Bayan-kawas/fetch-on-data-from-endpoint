import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'filmModel.dart';
//make a network request
Future<Film> fetchOnFilms() async{
  final response = await http.post('http://aflam.noisystate.com/app.php?c=1586172692975');

  if(response.statusCode == 200){
    print("okkkkk");
   return Film.fromJson(json.decode(response.body));
  }else{
    throw Exception('failllld');
  }

}