import 'package:coma_bem/widgets/category_item.dart';
import 'package:coma_bem/widgets/dishes.dart';
import 'package:flutter/material.dart';

import 'package:coma_bem/dummy_data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
   //double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var platform = Theme.of(context).platform;

    double alturaIos = height / 2;// * 0.3;
    double alturaAndroid = height / 2 ; // * 0.3;

    return SafeArea(
      child: Scaffold(
//        appBar: AppBar(
//          title: Text("ComaBem"),
//          elevation: 11,
//        ),
        body: SingleChildScrollView (
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Bem-vindo, Samuel",
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      flex: 4,
                    ),
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://avatars2.githubusercontent.com/u/18534260?s=460&u=35495b635f5c92419d4ae39d7d8e9b2b8174cb55&v=4'),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Categorias",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
              Container(
                height: 80, // tamanho de cada item das categorias

                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: DUMMY_CATEGORIES
                      .map(
                        (catData) => CategoryItem(
                        catData.id, catData.title, catData.color),
                  )
                      .toList(),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Receitas",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
              Container(
                height: (platform == TargetPlatform.iOS
                    ? alturaIos
                    : alturaAndroid), // tamanho de cada item das categorias

                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: DUMMY_MEALS
                      .map(
                        (catData) =>
                        Dishes(catData.id, catData.title, catData.imageUrl),
                  )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30.0),
              title: Text('Início'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 30.0),
              title: Text('Favoritos'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30.0),
              title: Text('Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
