import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Add_To_Cart_btn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      textColor: Colors.white,
      color: Colors.red,
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.red)
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          children: <Widget>[
            Text("Add to Cart"),
            SizedBox(width: 4.0,),
            Icon(
              Icons.add_shopping_cart,
              size: 18.0,
            )
          ],
        ),
      ),
    );
  }
}
