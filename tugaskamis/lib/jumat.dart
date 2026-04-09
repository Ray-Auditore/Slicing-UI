import 'package:flutter/material.dart';

class ProjectJumat extends StatelessWidget {
  const ProjectJumat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard App"),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 180,
              child: PageView(
                children: [
                  buildBanner("Flash Sale", Colors.blue),
                  buildBanner("Gratis Ongkir", Colors.green),
                  buildBanner("Promo Diskon", Colors.red),
                ],
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildMenuIcon(Icons.inventory_2, "Produk"),
                  buildMenuIcon(Icons.sell, "Promo"),
                  buildMenuIcon(Icons.category, "Kategori"),
                  buildMenuIcon(Icons.person, "Profile"),
                ],
              ),
            ),

            SizedBox(height: 20),

            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                children: [
                  buildProductTile("Laptop"),
                  buildProductTile("Mouse"),
                  buildProductTile("Keyboard"),
                  buildProductTile("Monitor"),
                  buildProductTile("Printer"),
                  buildProductTile("Headset"),
                  buildProductTile("Charger"),
                  buildProductTile("Table"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBanner(String text, Color color) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildMenuIcon(IconData icon, String label) {
    return Container(
      width: 85,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueGrey[600],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(height: 5),
          Text(label, style: TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }

  Widget buildProductTile(String name) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(name, style: TextStyle(fontSize: 18)),
    );
  }
}
