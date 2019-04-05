import 'package:eCommerce/pages/ProductDetailsPage.dart';
import 'package:flutter/material.dart';

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var productList = [
    {
      "name": "Blazer 1",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazer 2",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 100,
      "price": 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SimilarSingleProd(
            prodName: productList[index]['name'],
            prodPicture: productList[index]['picture'],
            prodOldPrice: productList[index]['old_price'],
            prodNewPrice: productList[index]['price'],
          );
        });
  }
}

class SimilarSingleProd extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodNewPrice;
  final prodBrandName;

  SimilarSingleProd({
    this.prodName,
    this.prodPicture,
    this.prodOldPrice,
    this.prodNewPrice,
    this.prodBrandName,
  });



  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                // here we are passing the values of the product to the product details page
                  builder: (context) => new ProductDetails(
                    productDetailName: prodName,
                    productDetailNewPrice: prodNewPrice,
                    productDetailOldPrice: prodOldPrice,
                    productDetailPicture: prodPicture,
                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text(prodName, style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                        ),

                        new Text("\$$prodNewPrice", style: new TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                      ],
                    )
                  ),
                  child: Image.asset(
                    prodPicture,
                    fit: BoxFit.cover,
                  )
                ),
            ),
          )),
    );
  }
}
