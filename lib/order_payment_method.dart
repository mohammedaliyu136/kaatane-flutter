import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'order_submitted.dart';

class Order_payment_method extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: new SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.lock, size: 15.0, color: Colors.grey[500]),
                  SizedBox(width: 5),
                  Text(
                    "SECURED BY PAYSTACK",
                    style: TextStyle(color: Colors.grey[500]),
                  )
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("How would you \nlike to pay",
                      style:
                          TextStyle(fontSize: 38.0, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 120.0,
        child: Column(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Order_Submitted()),
                  );
                },
                child: Container(
                  color: Colors.green[300],
                  child: Row(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Row(children: <Widget>[
                            Text("Pay with ", style: TextStyle(color: Colors.white)),
                            Text("Card",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                          ])),
                    ],
                  ),
                ),
              ),
            ),
            Divider(height: 1, thickness: 2),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Order_Submitted()),
                  );
                },
                child: Container(
                  color: Colors.green[300],
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child:Row(children: <Widget>[
                          Text("Pay on ", style: TextStyle(color: Colors.white)),
                          Text("Delivery",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                        ])
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
