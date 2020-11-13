import 'package:coma_bem/Screens/Home.dart';
import 'package:flutter/material.dart';

import 'Screens/Recipes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
        accentColor: Colors.brown,
        canvasColor: Color.fromRGBO(183, 203, 185, 1),
        fontFamily: 'Roboto',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            title: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
      //home: Home(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => Home(),
        Recipes.routeName: (ctx) => Recipes(),
      },
    );
  }
}
