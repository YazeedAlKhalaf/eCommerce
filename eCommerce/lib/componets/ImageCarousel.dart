import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ImageCarouselUI extends StatefulWidget {
  @override
  _ImageCarouselUIState createState() => _ImageCarouselUIState();
}

class _ImageCarouselUIState extends State<ImageCarouselUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/w3.jpeg'),
          AssetImage('assets/images/m1.jpeg'),
          AssetImage('assets/images/c1.jpg'),
          AssetImage('assets/images/w4.jpeg'),
          AssetImage('assets/images/m2.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
  }
}
