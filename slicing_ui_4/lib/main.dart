import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui_4/homepage.dart';
import 'package:slicing_ui_4/profil.dart';
import 'package:slicing_ui_4/promo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: AnimatedSplashScreen(
        splash: Icons.shopping_cart,
        nextScreen: NavigasiBawah(),
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.white,

      
      ),
    );
  }
}

class NavigasiBawah extends StatefulWidget {
  const NavigasiBawah({super.key});

  @override
  State<NavigasiBawah> createState() => _NavigasiBawahState();
}

class _NavigasiBawahState extends State<NavigasiBawah> {
  int selectedIndex = 0;
  final List<Widget> Pages = [Homepage1(), Profil(), Promo()];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          BottomNavigationBarItem(icon: Icon(Icons.discount), label: "Promo"),
        ],
      ),
    );
  }
}
