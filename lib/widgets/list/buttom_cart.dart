import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../delivery_info.dart';

class Buttom_Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: RaisedButton(
          color: Colors.red,
          textColor: Colors.white,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(38.0),
              side: BorderSide(color: Colors.red)),
          onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Delivery_info()),
          );},
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "PROCEEN TO PAY",
            ),
          ),
        ))
      ],
    );
  }
}
