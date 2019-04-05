import 'package:flutter/material.dart';
import 'package:eCommerce/componets/SimilarProducts.dart';
import 'package:eCommerce/pages/HomePage.dart';
import 'package:eCommerce/pages/CartPage.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailNewPrice;
  final productDetailOldPrice;
  final productDetailPicture;

  ProductDetails({
    this.productDetailName,
    this.productDetailNewPrice,
    this.productDetailOldPrice,
    this.productDetailPicture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: new Text(widget.productDetailName),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  )),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () =>
                null, // Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => new ShoppingCartPage())),
          )
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: new Container(
                color: Colors.white,
                child: Image.asset(widget.productDetailPicture),
              ),
              footer: new Container(
                color: Colors.white54,
                child: ListTile(
                  leading: new Text(
                    widget.productDetailName,
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  title: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new Text("\$${widget.productDetailOldPrice}",
                            style: new TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            )),
                      ),
                      new Expanded(
                          child: new Text(
                        "\$${widget.productDetailNewPrice}",
                        style: new TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),

//            ============= the first buttons ==============

          new Row(
            children: <Widget>[
//            ============== the size button ===============
              new Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Choose a Size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: new Row(
                    children: <Widget>[
                      new Expanded(child: new Text("Size")),
                      new Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

//            ============== the color button ===============
              new Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Colors"),
                            content: new Text("Choose a Color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: new Row(
                    children: <Widget>[
                      new Expanded(child: new Text("Color")),
                      new Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

//            ============== the Quantity button ===============
              new Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("Choose the Quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: new Row(
                    children: <Widget>[
                      new Expanded(child: new Text("Qty")),
                      new Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //            ============= the second buttons ==============

          new Row(
            children: <Widget>[
//            ============== the Buy Now, Favorite, and Add to Cart buttons ===============
              new Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy Now")),
              ),

              new IconButton(
                icon: Icon(Icons.add_shopping_cart, color: Colors.red),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(Icons.favorite_border, color: Colors.red),
                onPressed: () {},
              ),
            ],
          ),

          Divider(),

          new ListTile(
            title: new Text("Description"),
            subtitle: new Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),

          Divider(),

          new Row(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product name",
                    style: new TextStyle(color: Colors.grey)),
              ),
              new Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.productDetailName),
              ),
            ],
          ),

          new Row(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand",
                    style: new TextStyle(color: Colors.grey)),
              ),

              // REMEBER TO CREATE A PRODUCT BRAND
              new Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),
              ),
            ],
          ),

//          ADD THE PRODUCT CONDITION
          new Row(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condition",
                    style: new TextStyle(color: Colors.grey)),
              ),
              new Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("NEW"),
              ),
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "Similar Products",
              style: new TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),

//         SIMILAR PRODUCTS SECTION
          new Container(
            height: 415.0,
            child: SimilarProducts(),
          )
        ],
      ),
    );
  }
}

class ShoppingCartPage {}
