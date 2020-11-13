import 'package:flutter/material.dart';

import '../Screens/Recipes.dart';

//Adicionar as imagens re;acionada à categoria

class Dishes extends StatelessWidget {
  final String name;
  //final Icon icon;
  final String id;
  final String urlImage;

  Dishes(this.id, this.name, this.urlImage);

  void _selectCategory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(Recipes.routeName, arguments: {'id': id, 'name': name});
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var platform = Theme.of(context).platform;

    double alturaIos = height * 0.35;
    double alturaAndroid = height * 0.3;

    return InkWell(
        onTap: () {
          _selectCategory(context);
        },
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    alignment: Alignment.center,
                    height: (platform == TargetPlatform.iOS
                        ? alturaIos
                        : alturaAndroid),
                    width: width * 0.7,// largura do card
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(urlImage), fit: BoxFit.cover),
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: <Widget>[
//                      Text(
//                        name,
//                        style: Theme.of(context).textTheme.title,
//                      ),

                        //icon,
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: (platform == TargetPlatform.iOS
                  ? 50
                  : 80),
              left: 18,
              //child: Card(
              //color: Colors.white,
              //elevation: 10,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: width / 1.6,
                height: (platform == TargetPlatform.iOS
                    ? alturaIos / 2
                    : alturaAndroid / 2),
              ),
            ),
            //)
          ],
        ));
  }
}
