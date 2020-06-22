import 'package:eCommerce/pages/LoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DrawerUI extends StatefulWidget {
  @override
  _DrawerUIState createState() => _DrawerUIState();
}

class _DrawerUIState extends State<DrawerUI> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          //            header
          UserAccountsDrawerHeader(
            accountName: Text("Yazeed AlKhalaf"),
            accountEmail: Text('yazeedfady@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.red.shade900),
          ),

//            body

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My account'),
              leading: Icon(Icons.person),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.shopping_basket),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Categoris'),
              leading: Icon(Icons.dashboard),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite),
            ),
          ),

          Divider(),

          InkWell(
            onTap: () {
              FirebaseAuth.instance.signOut().then((value) {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Login()));
              });
            },
            child: ListTile(
              title: Text('Log out'),
              leading: Icon(
                Icons.transit_enterexit,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
