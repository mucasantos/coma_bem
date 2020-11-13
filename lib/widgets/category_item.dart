import 'package:coma_bem/Screens/Recipes.dart';
import 'package:flutter/material.dart';

//Adicionar as imagens re;acionada à categoria

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItem(this.id, this.title, this.color);

  void _selectCategory(BuildContext ctx) {
//    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
//      return Recipes(id, title);
//    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          _selectCategory(context);
        },
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Container(
            alignment: Alignment.center,
            width: 120,
            padding: const EdgeInsets.all(15),
            child: Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white) //Theme.of(context).textTheme.title,
                ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [color.withOpacity(0.5), color],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(15)),
          ),
        ));
  }
}
