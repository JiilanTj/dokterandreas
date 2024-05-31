import 'package:flutter/material.dart';
import 'package:dokterandreas/constants.dart'; // Pastikan kprimaryColor didefinisikan di sini
import 'package:dokterandreas/pages/home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0; // Start with the Home screen selected

  final List<Widget> screens = [
    HomePage(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentTab],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6.0,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.white,
          selectedItemColor: kprimaryColor,
          unselectedItemColor: Colors.grey.shade400,
          currentIndex: currentTab,
          onTap: (index) => setState(() => currentTab = index),
          items: [
            _buildBottomNavigationBarItem(
                icon: Icons.home, label: 'Beranda', index: 0),
            _buildBottomNavigationBarItem(
                icon: Icons.chat, label: 'Chat Admin', index: 1),
            _buildBottomNavigationBarItem(
                icon: Icons.receipt, label: 'Transaksi', index: 2),
            _buildBottomNavigationBarItem(
                icon: Icons.person, label: 'Profil Saya', index: 3),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      {required IconData icon, required String label, required int index}) {
    return BottomNavigationBarItem(
      icon: Stack(
        children: [
          if (currentTab == index)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 4,
                color: kprimaryColor,
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Icon(icon),
          ),
        ],
      ),
      label: label,
    );
  }
}
