import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'favorites.dart';
import 'cart.dart';
import 'profile.dart';

class FlutterVizBottomNavigationBarModel {
  final IconData icon;
  final String label;

  FlutterVizBottomNavigationBarModel({required this.icon, required this.label});
}

// Daftar item untuk BottomNavigationBar
List<FlutterVizBottomNavigationBarModel> flutterVizBottomNavigationBarItems = [
  FlutterVizBottomNavigationBarModel(icon: Icons.home, label: 'Home'),
  FlutterVizBottomNavigationBarModel(icon: Icons.favorite, label: 'Favorite'),
  FlutterVizBottomNavigationBarModel(icon: Icons.shopping_cart, label: 'Cart'),
  FlutterVizBottomNavigationBarModel(icon: Icons.account_circle, label: 'Profile'),
];


class BottomNav extends StatefulWidget {
  @override
  _BottomNav createState() => _BottomNav();
}

class _BottomNav extends State<BottomNav> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    dashboard(),
    Favorites(),
    cart(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: flutterVizBottomNavigationBarItems.map((item) {
          return BottomNavigationBarItem(
            icon: Icon(item.icon),
            label: item.label,
          );
        }).toList(),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}