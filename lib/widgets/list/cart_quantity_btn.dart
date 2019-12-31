import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class Quantity_Cart_btn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          //color: Colors.green,
          border: Border.all(color: Colors.green),
          borderRadius: new BorderRadius.circular(28.0)),
      child: Padding(

        padding: const EdgeInsets.symmetric(vertical:5.0, horizontal: 18.0),
        child: Wrap(
          children: <Widget>[
          Icon(Icons.remove),
          SizedBox(width: 10.0),
          Text("3", style: TextStyle(fontSize: 18.0)),
            SizedBox(width: 10.0),
          Icon(Icons.add)
        ],),
      ),
    );
  }
}
