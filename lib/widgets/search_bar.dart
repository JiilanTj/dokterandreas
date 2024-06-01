import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dokterandreas/constants.dart'; // Pastikan untuk mengimpor constants.dart

class MySearchBar extends StatefulWidget {
  final TextEditingController controller;
  final ValueChanged<bool> onFocusChange;

  MySearchBar({
    required this.controller,
    required this.onFocusChange,
  });

  @override
  _MySearchBarState createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          _isFocused = hasFocus;
        });
        widget.onFocusChange(hasFocus);
      },
      child: Container(
        decoration: BoxDecoration(
          color: _isFocused ? Colors.white : kscaffoldColor,
          borderRadius: BorderRadius.circular(4.0),
          boxShadow: _isFocused
              ? [
                  BoxShadow(
                      color: Colors.black26, blurRadius: 10, spreadRadius: 1)
                ]
              : [],
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Icon(Icons.menu, color: Colors.grey[600]),
            SizedBox(width: 15), // Sesuaikan lebarnya sesuai kebutuhan
            Expanded(
              child: TextField(
                controller: widget.controller,
                decoration: InputDecoration(
                  hintText: 'Cari Produk...',
                  hintStyle: GoogleFonts.roboto(color: Colors.grey[600]),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                ),
                style: GoogleFonts.roboto(color: Colors.black),
              ),
            ),
            Stack(
              children: [
                Icon(Icons.shopping_cart, color: Colors.grey[600]),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: Text(
                      '3', // Contoh jumlah item, ini seharusnya dinamis
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
