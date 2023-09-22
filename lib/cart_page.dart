import 'package:flutter/material.dart';
import 'package:flutter_projects/products.dart';

class CartPage extends StatelessWidget {
  final List<Products> totalProduct;
  const CartPage({super.key, required this.totalProduct});

  @override
  Widget build(BuildContext context) {
    List<Products> cartCount =
        totalProduct.where((item) => item.qyt == 5).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Total Products: ${cartCount.length}",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
