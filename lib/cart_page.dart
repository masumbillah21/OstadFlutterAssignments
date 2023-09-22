import 'package:flutter/material.dart';
import 'package:flutter_projects/products.dart';

class CartPage extends StatelessWidget {
  final List<Products> totalProduct;
  const CartPage({super.key, required this.totalProduct});

  @override
  Widget build(BuildContext context) {
    int total = 0;
    for (int i = 0; i < totalProduct.length; i++) {
      if (totalProduct[i].qyt >= 5) {
        total++;
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Total Products: $total",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
