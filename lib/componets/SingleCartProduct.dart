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
      child: new ListTile(

//      ================== LEADING SECTION ========================
        leading: new Image.asset(cartProdPicture, width: 80.0, height: 80.0,),


//      ================== TITLE SECTION ========================
        title: new Text(cartProdName),


//      ================== SUBTITLE SECTION ========================
        subtitle: new Column(
          children: <Widget>[
            
//     =================== First Row Inside The COLUMN ==================              
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Size:  $cartProdSize"),
                    ),

                    new Expanded(
                      child: new Text("Color:  $cartProdColor"),
                    ),
                  ],
                ),
              ),
//            ================== PRICE ROW =======================
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                          child: new Text("\$$cartProdNewPrice", style: new TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17.0),),
                        ),
                ],
              ),
            ),
          ],
        ),
      trailing: new Column(
        children: <Widget>[
          new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {},),
          new Text("$cartProdQty", style: new TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15.5),),
          new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {},),
        ],
      ),
      ),
    );
  }
}