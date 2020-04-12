import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fetchOnFiilmData.dart';

void main() {
  fetchOnFilms();
  return runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var filmsFetched;
  @override
//  void initState() {
//    filmsFetched = fetchOnFilms();
//    super.initState();
//  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('choose film'),
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        body: SafeArea(
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              FutureBuilder(
              future: fetchOnFilms(),
              builder: (context,snapshot){
                if(snapshot.hasData){
                  return Column(
                    children: <Widget>[
                      Text(snapshot.data.filmName),
                      Text('${snapshot.data.yearProduction}'),
                    ],
                  );
                }
                return CircularProgressIndicator();
              },

            ),
                RaisedButton(
                  color: Colors.pink.shade50,
                  child: Text("اختر لي فيلم "),
                  onPressed: (){
                    setState(() {

                    });
                  },
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}


