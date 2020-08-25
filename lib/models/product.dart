class Product {
  final int id;
  final double price;
  final String title;
  final String description;
  final String image;

  Product({this.id, this.price, this.title, this.description, this.image});
}

List<Product> products = [
  Product(
      id: 1,
      price: 50.0,
      title: 'Motion High Back Chair',
      description: 'Fabric, Milan Red',
      image: 'assets/images/temp1.png'),
  Product(
      id: 2,
      price: 500.0,
      title: 'Prime Mid Back Chair',
      description: 'Fabric, Milan Red',
      image: 'assets/images/temp2.png'),
  Product(
      id: 3,
      price: 1000.0,
      title: 'Ace Full Back Chair',
      description: 'Fabric, Milan Red',
      image: 'assets/images/temp3.png'),
  Product(
      id: 4,
      price: 1100.0,
      title: 'Elight High Back Chair',
      description: 'Fabric, Milan Red',
      image: 'assets/images/temp3.png')
];
