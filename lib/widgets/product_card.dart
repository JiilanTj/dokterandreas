import 'package:flutter/material.dart';
import 'package:dokterandreas/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListTile(
        leading: Image.network(
          product.image,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        title: Text(product.title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price after discount: \$${product.price - product.discount}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Price: \$${product.price}',
              style: TextStyle(decoration: TextDecoration.lineThrough),
            ),
            Text(
              'Stock Tersedia: ${product.stock}',
              style: TextStyle(
                color: product.stock > 0 ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}