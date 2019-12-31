import 'package:flutter/material.dart';

import 'order_payment_method.dart';

class Delivery_info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Delivery Information"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 24.0,
          left: 18.0,
          right: 18.0,
        ),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Enter your fullname'),
            ),
            TextFormField(
              decoration:
                  InputDecoration(labelText: 'Enter your email (optional)'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Enter your phonenumber'),
            ),
            TextFormField(
              decoration:
                  InputDecoration(labelText: 'Enter your note to resataurant'),
              maxLines: null,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(38.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Order_payment_method()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("Pay"),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
