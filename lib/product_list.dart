import 'package:flutter/material.dart';
import 'package:flutter_projects/cart_page.dart';
import 'package:flutter_projects/products.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<Products> _products = [
    Products(productName: 'Chair', price: 1000.0),
    Products(productName: 'Table', price: 2000.0),
    Products(productName: 'Almira', price: 5000.0),
    Products(productName: 'Sofa', price: 10000.0),
    Products(productName: 'Wardrobe', price: 8000.0),
    Products(productName: 'Showcase', price: 15000.0),
    Products(productName: 'Refrigerator', price: 50000.0),
    Products(productName: 'Bookshelf', price: 3000.0),
    Products(productName: 'Computer', price: 31000.0),
    Products(productName: 'Laptop', price: 12000.0),
    Products(productName: 'Mobile', price: 11000.0),
    Products(productName: 'Tablet', price: 3000.0),
  ];

  Future<void> _showMyDialog(productName, productQyt) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Congratulations!'),
          content: Text("You've bought $productQyt $productName!"),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartPage(totalProduct: _products),
            ),
          );
        },
        tooltip: 'Go to Cart',
        child: const Icon(Icons.shopping_cart),
      ),
      body: Scrollbar(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: _products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _products[index].productName,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("\$${_products[index].price.toStringAsFixed(2)}"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Counts: ${_products[index].qyt}"),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _products[index].qyt++;
                          });
                          if (_products[index].qyt == 5) {
                            _showMyDialog(_products[index].productName,
                                _products[index].qyt);
                          }
                        },
                        child: const Text("Buy Now"),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
