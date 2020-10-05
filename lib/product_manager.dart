import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager(this.startingProduct);
  @override
  State<StatefulWidget> createState() {
   return _ProductManagerState();
  }
  
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

@override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                onPressed: () {
                  setState(() {
                    _products.add('Awsome Food');
                  });
                },
                child: Text('Add Product'),
              ),
            ),
            Products(_products)
    ],);
  }

}