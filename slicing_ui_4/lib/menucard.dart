import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),

      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffe9f1ff), Color(0xffe0ebff)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: Offset(0, 5),
          ),
        ],
      ),

    
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xff9DBAFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.local_drink, size: 28),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Minuman",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xff9DBAFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.fastfood, size: 28),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Makanan",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xff9DBAFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.local_pizza, size: 28),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Fast Food",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xff9DBAFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.shopping_cart, size: 28),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Buah & Sayur",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xff9DBAFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.restaurant, size: 28),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Restoran",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 20),

          Container(height: 1, color: Colors.grey.shade400.withOpacity(0.6)),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("assets/wallet.png", width: 28, height: 28),
                  SizedBox(width: 6),
                  Text(
                    "Rp. 500.000",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1A2E66),
                    ),
                  ),
                ],
              ),
              Text(
                "0 coins",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff1A2E66),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
