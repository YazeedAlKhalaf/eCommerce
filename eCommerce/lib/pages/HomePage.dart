import 'package:eCommerce/componets/DrawerUI.dart';
import 'package:flutter/material.dart';

//my own imports
import 'package:eCommerce/componets/HorizontalListview.dart';
import 'package:eCommerce/componets/ProductsList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red.shade900,
        title: Text(
          'Fashapp',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: DrawerUI(),
      body: Column(
        children: <Widget>[
          //image carousel begins here
          //  ImageCarouselUI(),

          //padding widget
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Categories',
              ),
            ),
          ),

          //Horizontal list view begins here
          HorizontalList(),

          //padding widget
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recent products',
              ),
            ),
          ),

          //grid view
          Flexible(
            child: Products(),
          ),
        ],
      ),
    );
  }
}
