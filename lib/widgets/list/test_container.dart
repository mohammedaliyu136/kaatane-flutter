import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'contact.dart';

class Test_Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text("img"),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("restaurant"),
              Text("restaurant"),
              Contact()
            ],
          ),
        )
      ],
    );
  }
}
