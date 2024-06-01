class Product {
  String title;
  String image;
  String imagetwo;
  String imagethree;
  String imagefour;
  String imagefive;
  String imagesix;
  String imageseven;
  double price;
  double discount;
  int stock;

  Product({
    required this.title,
    required this.image,
    required this.imagetwo,
    required this.imagethree,
    required this.imagefour,
    required this.imagefive,
    required this.imagesix,
    required this.imageseven,
    required this.price,
    required this.discount,
    required this.stock,
  });

  // Function to convert a JSON map to a Product instance
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],
      image: json['image'],
      imagetwo: json['imagetwo'],
      imagethree: json['imagethree'],
      imagefour: json['imagefour'],
      imagefive: json['imagefive'],
      imagesix: json['imagesix'],
      imageseven: json['imageseven'],
      price: json['price'],
      discount: json['discount'],
      stock: json['stock'],
    );
  }

  // Function to convert a Product instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'image': image,
      'imagetwo': imagetwo,
      'imagethree': imagethree,
      'imagefour': imagefour,
      'imagefive': imagefive,
      'imagesix': imagesix,
      'imageseven': imageseven,
      'price': price,
      'discount': discount,
      'stock': stock,
    };
  }

  // Dummy data
  static List<Product> getDummyProducts() {
    return [
      Product(
        title: 'Product 1',
        image: 'https://placehold.jp/150x150.png',
        imagetwo: 'https://placehold.jp/150x150.png',
        imagethree: 'https://placehold.jp/150x150.png',
        imagefour: 'https://placehold.jp/150x150.png',
        imagefive: 'https://placehold.jp/150x150.png',
        imagesix: 'https://placehold.jp/150x150.png',
        imageseven: 'https://placehold.jp/150x150.png',
        price: 100.0,
        discount: 10.0,
        stock: 20,
      ),
      Product(
        title: 'Product 2',
        image: 'https://placehold.jp/150x150.png',
        imagetwo: 'https://placehold.jp/150x150.png',
        imagethree: 'https://placehold.jp/150x150.png',
        imagefour: 'https://placehold.jp/150x150.png',
        imagefive: 'https://placehold.jp/150x150.png',
        imagesix: 'https://placehold.jp/150x150.png',
        imageseven: 'https://placehold.jp/150x150.png',
        price: 200.0,
        discount: 20.0,
        stock: 15,
      ),
      Product(
        title: 'Product 3',
        image: 'https://placehold.jp/150x150.png',
        imagetwo: 'https://placehold.jp/150x150.png',
        imagethree: 'https://placehold.jp/150x150.png',
        imagefour: 'https://placehold.jp/150x150.png',
        imagefive: 'https://placehold.jp/150x150.png',
        imagesix: 'https://placehold.jp/150x150.png',
        imageseven: 'https://placehold.jp/150x150.png',
        price: 300.0,
        discount: 15.0,
        stock: 10,
      ),
    ];
  }
}
