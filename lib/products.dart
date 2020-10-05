import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);
  @override
  Widget build(BuildContext context) {
   return Column(
              children: products.map(
                (elemet) => Card(
                  child: Column(
                    children: [
                      Image.asset('assets/food.jpg'),
                      Text(elemet)
                    ],
                  ),
                ),
              ).toList(),
            );
  } 
}