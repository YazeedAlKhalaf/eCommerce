import 'package:flutter/material.dart';
import 'package:eCommerce/pages/ProductDetailsPage.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Blazer 1",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 85,
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
    {
      "name": "Red Dress",
      "picture": "images/products/hills1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/hills2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/pants1.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/pants2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/shoe1.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/skt1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/skt2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/hills2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/hills1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/hills2.jpeg",
      "old_price": 100,
      "price": 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProd(
            prodName: productList[index]['name'],
            prodPicture: productList[index]['picture'],
            prodOldPrice: productList[index]['old_price'],
            prodNewPrice: productList[index]['price'],
          );
        });
  }
}

class SingleProd extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodNewPrice;
  final prodBrandName;

  SingleProd({
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
          tag: Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  // here we are passing the values of the product to the product details page
                  builder: (context) => ProductDetails(
                        productDetailName: prodName,
                        productDetailNewPrice: prodNewPrice,
                        productDetailOldPrice: prodOldPrice,
                        productDetailPicture: prodPicture,
                      ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(prodName,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0)),
                          ),
                          Text(
                            "\$$prodNewPrice",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  child: Image.asset(
                    prodPicture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
