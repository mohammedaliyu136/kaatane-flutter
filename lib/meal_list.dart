import 'package:flutter/material.dart';

import 'cart.dart';
import 'home.dart';
import 'widgets/list/meal_list_item.dart';

class Meal_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Meals';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
            title: Text(title),
            leading: IconButton(
                icon: BackButtonIcon(),
                onPressed: () {
                  Navigator.pop(context);
                }),
            actions: <Widget>[
              // action button
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cart()),
                  );
                },
              ),
            ]),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              Meal_list_item(),
              Meal_list_item(),
              Meal_list_item(),
              Meal_list_item(),
              Meal_list_item(),
            ],
          ),
        ),
      ),
    );
  }
}
