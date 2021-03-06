import 'package:flutter/material.dart';

class SingleCartProduct extends StatelessWidget {
  final cartProdName;
  final cartProdPicture;
  final cartProdNewPrice;
  final cartProdQty;
  final cartProdSize;
  final cartProdColor;

  SingleCartProduct({
    this.cartProdName,
    this.cartProdPicture,
    this.cartProdNewPrice,
    this.cartProdQty,
    this.cartProdSize,
    this.cartProdColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//      ================== LEADING SECTION ========================
        leading: Image.asset(
          cartProdPicture,
          width: 80.0,
          height: 80.0,
        ),

//      ================== TITLE SECTION ========================
        title: Text(cartProdName),

//      ================== SUBTITLE SECTION ========================
        subtitle: Column(
          children: <Widget>[
//     =================== First Row Inside The COLUMN ==================
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text("Size:  $cartProdSize"),
                  ),
                  Expanded(
                    child: Text("Color:  $cartProdColor"),
                  ),
                ],
              ),
            ),
//            ================== PRICE ROW =======================
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "\$$cartProdNewPrice",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        trailing: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_drop_up),
              onPressed: () {},
            ),
            Text(
              "$cartProdQty",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.5),
            ),
            IconButton(
              icon: Icon(Icons.arrow_drop_down),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
