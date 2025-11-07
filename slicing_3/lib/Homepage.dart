import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicing_3/banner.dart';
import 'package:slicing_3/kartukai.dart';
import 'package:slicing_3/menuatas.dart';
import 'package:slicing_3/mnitem.dart';
import 'package:slicing_3/mnkereta.dart';
import 'package:slicing_3/trip.dart';

// import 'package:lucide_icons_flutter/lucide_icons.dart';
// import 'package:lucide_icons_flutter/test_icons.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("assets/Stasiun.jpg"),
                      fit: BoxFit.cover,
                      opacity: 0.5,
                    ),
                  ),
                  child: Menuatas1(),
                ),
                Kartukai(),
              ],
            ),
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 15,
                  children: [
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                      warna: Colors.blue.withOpacity(0.2),
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Antar Kota",
                      warna: Colors.red.withOpacity(0.2),
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Ekonomi",
                      warna: Colors.green.withOpacity(0.2),
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Bisnis",
                      warna: Colors.orange.withOpacity(0.2),
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "Lokal",
                      warna: Colors.purple.withOpacity(0.2),
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "primary",
                      warna: Colors.pink.withOpacity(0.2),
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35),
                      text: "wisata",
                      warna: Colors.teal.withOpacity(0.2),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Mnitem(),
            Trip(),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promo Terbaru",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1.5, color: Colors.blue),
                    ),
                    child: Text(
                      "Lihat semua",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            Banner1(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: SizedBox(height: 30, child: Image.asset("assets/home.png")),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset("assets/promo.png"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(height: 30, child: Image.asset("assets/chat.png")),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset("assets/shopping-bag.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
