import 'package:flutter/material.dart';
import './product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.amber
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: ProductManager('Food Tester')
      ),
    );
  }
}
