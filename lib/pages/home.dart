import 'package:flutter/material.dart';
import 'package:dokterandreas/widgets/search_bar.dart';
import 'package:dokterandreas/constants.dart';
import 'package:dokterandreas/widgets/banner_widget.dart';
import 'package:dokterandreas/widgets/horizontal_boxes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedDropdownValue = 'Terlaris';
  final TextEditingController _searchController = TextEditingController();

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
                                fontWeight: FontWeight.w400),
                          ),
                        );
                      }).toList(),
                      icon:
                          Icon(Icons.arrow_drop_down, color: Colors.grey[700]),
                      iconSize: 24,
                      underline: SizedBox(),
                    ),
                  ],
                ),
              ),
              // Add other widgets below as needed
            ],
          ),
        ),
      ),
    );
  }
}
