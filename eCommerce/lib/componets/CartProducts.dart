import 'package:flutter/material.dart';
import 'package:eCommerce/componets/SingleCartProduct.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnTheCart = [
    {
      "name": "Blazer For mini Millionaires",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Blazer For Humangus Millionaires",
      "picture": "images/products/blazer2.jpeg",
      "price": 50,
      "size": "XL",
      "color": "Blue",
      "quantity": 1,
    },
    {
      "name": "Heels 100% SMOOTH",
      "picture": "images/products/hills1.jpeg",
      "price": 50,
      "size": "48",
      "color": "Purple",
      "quantity": 3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productsOnTheCart.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cartProdName: productsOnTheCart[index]["name"],
            cartProdColor: productsOnTheCart[index]["color"],
            cartProdQty: productsOnTheCart[index]["quantity"],
            cartProdSize: productsOnTheCart[index]["size"],
            cartProdNewPrice: productsOnTheCart[index]["price"],
            cartProdPicture: productsOnTheCart[index]["picture"],
          );
        });
  }
}
