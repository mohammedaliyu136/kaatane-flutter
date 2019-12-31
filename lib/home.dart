import 'package:flutter/material.dart';

import 'widgets/list/restaurant_list_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants"),
      ),
      body: Container(
          child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
            Restaurant_list_item(), Restaurant_list_item(), Restaurant_list_item(), Restaurant_list_item(), Restaurant_list_item(),
        ],
      )),
    );
  }
}
