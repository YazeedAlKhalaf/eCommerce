import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'assets/images/cats/tshirt.png',
            imageCaption: 'shirt',
          ),
          Category(
            imageLocation: 'assets/images/cats/dress.png',
            imageCaption: 'dress',
          ),
          Category(
            imageLocation: 'assets/images/cats/jeans.png',
            imageCaption: 'pants',
          ),
          Category(
            imageLocation: 'assets/images/cats/formal.png',
            imageCaption: 'formal',
          ),
          Category(
            imageLocation: 'assets/images/cats/informal.png',
            imageCaption: 'formal',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({this.imageLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
              title: Image.asset(
                imageLocation,
                width: 40.0,
                height: 40.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  imageCaption,
                  style: TextStyle(fontSize: 12.0),
                ),
              )),
        ),
      ),
    );
  }
}
