import 'package:flutter/material.dart';

import 'widgets/list/buttom_cart.dart';
import 'widgets/list/cart_list_item.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListView(
            children: <Widget>[
              Cart_list_item(),
              Cart_list_item(),
              Cart_list_item(),
              Cart_list_item(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: new Container(
        height: 170.0,
        color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:24.0, horizontal: 34.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Your Orders",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0)),
                ],
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Text("Bill Total:", style: TextStyle(fontSize: 15.0),),
                    SizedBox(width: 5.0,),
                    Text("N0", style: TextStyle(fontSize: 15.0),),
                  ],
                ),
              ),
              Buttom_Cart(),
            ],
          ),
        ),
      ),
    );
  }
}
