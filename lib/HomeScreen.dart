import 'package:flutter/material.dart';
import 'package:flutter_projects/product.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SampleItem? selectedMenu;
  final List<Product> _products = [
    Product(
      image: "assets/photo1.png",
      name: "Pullover",
      color: "Black",
      size: "L",
      price: 51,
    ),
    Product(
      image: "assets/photo2.png",
      name: "T-Shir",
      color: "Gray",
      size: "L",
      price: 30,
    ),
    Product(
      image: "assets/photo3.png",
      name: "Sport Dress",
      color: "Black",
      size: "M",
      price: 43,
    ),
  ];
  int totalAmount = 0;

  void _showSnackBar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Scrollbar(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(),
                  ),
                ),
                Text(
                  "My Bag",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _products.length,
                    itemBuilder: (context, index) => Card(
                      elevation: 1,
                      child: Row(
                        children: [
                          Image.asset(
                            _products[index].image,
                            width: 104,
                            height: 105,
                            fit: BoxFit.fill,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _products[index].name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              text: 'Color: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall,
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: _products[index].color,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                const TextSpan(text: ' Size: '),
                                                TextSpan(
                                                  text: _products[index].size,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    PopupMenuButton<SampleItem>(
                                      initialValue: selectedMenu,
                                      // Callback that sets the selected popup menu item.
                                      onSelected: (SampleItem item) {
                                        setState(() {
                                          selectedMenu = item;
                                        });
                                      },
                                      itemBuilder: (BuildContext context) =>
                                          <PopupMenuEntry<SampleItem>>[
                                        const PopupMenuItem<SampleItem>(
                                          value: SampleItem.itemOne,
                                          child: Text('Item 1'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            if (_products[index].quantity > 0) {
                                              setState(() {
                                                _products[index].quantity--;
                                                totalAmount -=
                                                    _products[index].price;
                                              });
                                            }
                                          },
                                          child: Text(
                                            "-",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ),
                                        Text("${_products[index].quantity}"),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              _products[index].quantity++;
                                              totalAmount +=
                                                  _products[index].price;
                                            });
                                          },
                                          child: Text(
                                            "+",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child:
                                          Text("${_products[index].price}\$"),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Total amount:",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "$totalAmount\$",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          if (totalAmount == 0) {
                            _showSnackBar("You need to add product!!");
                          } else {
                            _showSnackBar("Congratulation!!");
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          backgroundColor: const Color(0XFFDB3022),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("CHECK OUT"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
