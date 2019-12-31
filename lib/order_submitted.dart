import 'package:flutter/material.dart';
import 'home.dart';

class Order_Submitted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child:
                      Text("Order Placed!", style: TextStyle(fontSize: 28.0)),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(28.0),
                  side: BorderSide(color: Colors.red)),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()), (route)=>false
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "BACK TO HOME",
                ),
              ),
            ),
          ),
        ));
  }
}
