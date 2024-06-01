import 'package:flutter/material.dart';
import 'package:dokterandreas/widgets/search_bar.dart';
import 'package:dokterandreas/constants.dart';
import 'package:dokterandreas/widgets/banner_widget.dart';
import 'package:dokterandreas/widgets/horizontal_boxes.dart';
import 'package:dokterandreas/models/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedDropdownValue = 'Terlaris';
  final TextEditingController _searchController = TextEditingController();
  List<Product> products = Product.getDummyProducts();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MySearchBar(
                controller: _searchController,
                onFocusChange: (hasFocus) {
                  print("Search bar focus: $hasFocus");
                },
              ),
              BannerWidget(
                imageUrl: 'https://placehold.jp/600x400.png',
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
              ),
              SizedBox(height: 8),
              HorizontalBoxes(),
              SizedBox(height: 8),
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    DropdownButton<String>(
                      value: selectedDropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedDropdownValue = newValue ?? 'Terlaris';
                        });
                        print("Selected: $newValue");
                      },
                      items: <String>[
                        'Terlaris',
                        'Termurah',
                        'Termahal',
                        'Terbaru',
                        'Rekomendasi'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                      }).toList(),
                      icon: Icon(Icons.arrow_drop_down, color: Colors.grey[700]),
                      iconSize: 24,
                      underline: SizedBox(),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.filter_list, color: Colors.grey[700]),
                        SizedBox(width: 5),
                        Text(
                          'Filters',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              GridView.count(
  crossAxisCount: 2,
  shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(),
  childAspectRatio: 2 / 3, // Adjust this aspect ratio as needed
  children: products.map((product) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 150, // Set the height here
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                product.image,
                width: double.infinity,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '\Rp ${product.price - product.discount}',
                  ),
                  Text(
                    '\Rp ${product.price}',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.red,
                    ),
                  ),
                  if (product.stock > 0)
                    Text(
                      'Stock Available: ${product.stock}',
                    )
                  else
                    Text(
                      'Out of Stock',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }).toList(),
),

            ],
          ),
        ),
      ),
    );
  }
}
