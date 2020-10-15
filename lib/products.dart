import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Image.asset('assets/food.jpg'),
                  Text(products[index])
                ],
              ),
            );
          },
        ),
      ),
    );
    //     Column(
    //   children: products
    //       .map(
    //         (elemet) => Card(
    //           child: Column(
    //             children: [Image.asset('assets/food.jpg'), Text(elemet)],
    //           ),
    //         ),
    //       )
    //       .toList(),
    // );
  }
}
