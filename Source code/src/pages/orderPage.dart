import 'package:flutter/material.dart';
import 'package:zomato/src/pages/signInPage.dart';
import 'package:zomato/src/widget/orderCard.dart';
import 'package:zomato/src/widget/orderCard2.dart';
import 'package:zomato/src/widget/orderCard3.dart';
import 'package:zomato/src/widget/orderCard4.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Selected Items List",
          style: TextStyle(color: Colors.black, fontSize: 23.0),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        children: <Widget>[
          OrderCard(),
          OrderCard2(),
          OrderCard3(),
          OrderCard4(),
        ],
      ),
      bottomNavigationBar: orderDetail(),
    );
  }

  Widget orderDetail() {
    return Container(
      height: 220.0,
      margin: EdgeInsets.only(top: 25.0, bottom: 16.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Total Items",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "4",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 13.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Estimated Weight(kg)",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "107.5 kg",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 13.0,
          ),
          SizedBox(
            height: 24.0,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SignInPage()));
            },
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: Text(
                  "Confirm Items",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
