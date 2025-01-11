// ignore_for_file: file_names

import 'package:flutter/material.dart';

 

class ProductHomeScreen extends StatelessWidget {
  final List<String> products = List.generate(10, (index) => 'Product ${index + 1}');

  ProductHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ( context,  constraints) {
        // For small screen (less than 600px), show products in a single column
        if (constraints.maxWidth < 600) {
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.all(8),
                child: ListTile(
                  title: Text(products[index]),
                  leading: const Icon(Icons.shopping_cart),
                ),
              );
            },
          );
        } else {
          // For larger screens (600px or more), show products in a grid
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,// 2 items per row on larger screens
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Card(
                child: GridTile(
                  header: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      products[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  child: const Icon(Icons.shopping_cart, size: 40),
                ),
              );
            },
          );
        }
      },
    );
  }
}
