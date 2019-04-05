import 'package:flutter/material.dart';
import 'package:eCommerce/componets/cartProducts.dart';
import 'package:eCommerce/pages/HomePage.dart';

class ShoppingCartPage extends StatefulWidget {

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Shopping Cart'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()),)
          ),
        ],
      ),

      body: new CartProducts(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: new Row(
          children: <Widget>[
            new Expanded(
              child: ListTile(
                title: new Text("Total:"),
                subtitle: new Text("\$230"),
              ),
            ),

            new Expanded(
              child: new MaterialButton(
                onPressed: () {},
                child: new Text("Check out", style: new TextStyle(color: Colors.white),),
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}