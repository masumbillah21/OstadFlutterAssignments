class Product {
  String image;
  String name;
  String color;
  String size;
  int quantity = 1;
  int price;

  Product(
      {required this.image,
      required this.name,
      required this.color,
      required this.size,
      required this.price});
}
