import 'package:flutter/material.dart';
import 'package:dokterandreas/widgets/search_bar.dart';
import 'package:dokterandreas/constants.dart';
import 'package:dokterandreas/widgets/banner_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentSlide = 0;
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey[200], // Menggunakan warna abu-abu untuk background
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MySearchBar(
                controller: _searchController,
                onFocusChange: (hasFocus) {
                  // Handle focus change if necessary
                  print("Search bar focus: $hasFocus");
                },
              ),
              BannerWidget(
                imageUrl:
                    'https://placehold.jp/600x400.png', // Gantilah URL ini dengan URL gambar yang Anda inginkan
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
              ),
              // Add other widgets below as needed
            ],
          ),
        ),
      ),
    );
  }
}
