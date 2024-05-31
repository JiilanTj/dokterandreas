import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final BoxFit fit;
  final EdgeInsetsGeometry margin;

  BannerWidget({
    required this.imageUrl,
    this.width = double.infinity,
    this.height = 200.0,
    this.fit = BoxFit.cover,
    this.margin = const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: fit,
        ),
      ),
    );
  }
}
