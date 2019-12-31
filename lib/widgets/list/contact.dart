import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(Icons.phone, size: 18.0),
        SizedBox(width: 3.0),
        Text("09069944201"),
        SizedBox(width: 8.0),
        Text("No delivery")
      ],
    );
  }
}
