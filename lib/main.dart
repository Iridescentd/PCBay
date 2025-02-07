import 'package:flutter/material.dart';
import 'cart.dart'; //Diganti berdasarkan file soal
import 'dashboard.dart'; //Diganti berdasarkan file soal
import 'details.dart'; //Diganti berdasarkan file soal
import 'editprofile.dart'; //Diganti berdasarkan file soal
import 'favorites.dart'; //Diganti berdasarkan file soal
import 'loginScreen.dart'; //Diganti berdasarkan file soal
import 'profile.dart'; //Diganti berdasarkan file soal
import 'registerScreen.dart'; //Diganti berdasarkan file soal
import 'splashscreen.dart'; //Diganti berdasarkan file soal
import 'transaction.dart'; //Diganti berdasarkan file soal
import 'complete.dart';
import 'categories.dart';

// Muhammad Naufal Pratama - XI RPL A

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const splashscreen(), //Mengikuti soal mana yang di-Import
      routes: {
        '/register': (context) => const registerScreen(),
        '/login': (context) => const loginScreen(),
        '/profile': (context) => const profile(),
        '/dashboard': (context) => dashboard(),
        '/cart': (context) => cart(),
        '/details': (context) => const Details(),
        '/transaction': (context) => Transaction(),
        '/editprofile': (context) => const editprofile(),
        '/favorites': (context) => Favorites(),
        '/complete': (context) => complete(),
        '/categories': (context) => categories(),
      },
    );
  }
}
