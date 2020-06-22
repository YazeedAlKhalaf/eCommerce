import 'package:flutter/material.dart';

class AddPhotos extends StatefulWidget {
  @override
  _AddPhotosState createState() => _AddPhotosState();
}

class _AddPhotosState extends State<AddPhotos> {
  Color black = Colors.black;
  Color white = Colors.white;
  Color grey = Colors.grey;
  Color red = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlineButton(
              onPressed: () {},
              borderSide: BorderSide(
                color: grey.withOpacity(0.5),
                width: 2.0,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14.0, 40.0, 14.0, 40.0),
                child: Icon(
                  Icons.add_a_photo,
                  color: grey,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlineButton(
              onPressed: () {},
              borderSide: BorderSide(
                color: grey.withOpacity(0.5),
                width: 2.0,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14.0, 40.0, 14.0, 40.0),
                child: Icon(
                  Icons.add_a_photo,
                  color: grey,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlineButton(
              onPressed: () {},
              borderSide: BorderSide(
                color: grey.withOpacity(0.5),
                width: 2.0,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14.0, 40.0, 14.0, 40.0),
                child: Icon(
                  Icons.add_a_photo,
                  color: grey,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
