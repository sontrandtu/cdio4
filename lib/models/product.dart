
class Product {
  final String title, description; // chi tiet
  final List<String> images;
  final List<String> size;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.images,
    required this.size,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

//list demo product
List<Product> demoProducts = [
  Product(
    images: [
      "assets/images/wireless headset.png",
    ],
    size: [
      "S",
      "M",
      "L",
      "XL",
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    size: [
      "S",
      "M",
      "L",
      "XL",
    ],
    title: "Wireless Controller to PS4",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    size: [
      "S",
      "M",
      "L",
      "XL",
    ],
    title: "Nike Sport White - Man Paint",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    images: [
      "assets/images/glap.png",
    ],
    size: [
      "S",
      "M",
      "L",
      "XL",
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    images: [
      "assets/images/wireless headset.png",
    ],
    size: [
      "S",
      "M",
      "L",
      "XL",
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    size: [
      "S",
      "M",
      "L",
      "XL",
    ],
    title: "Nike Sport White - Man Paint",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
];

const String description =
    "Wireless Controller for PS4 gives you what you want in your gaming from over precision control your games to sharing....";