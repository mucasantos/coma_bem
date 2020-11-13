import 'package:flutter/material.dart';

class Recipes extends StatelessWidget {
  static const routeName = '/Recipes';

//  final String id;
//  final String recipeName;
//
//  Recipes(this.id, this.recipeName);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final recipeName = routeArgs['name'];

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeName),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {},
        itemCount: 2,
      ),
    );
  }
}
