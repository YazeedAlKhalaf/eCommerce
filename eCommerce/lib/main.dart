import 'package:flutter/material.dart';
import './pages/Loginpage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        primaryColorDark: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
    ),
  );
}
