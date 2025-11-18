import 'package:flutter/material.dart';

class Menuitem extends StatelessWidget {
  const Menuitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xffCFE1FF),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.send, size: 32),
                ),
                SizedBox(height: 6),
                Text("Transfer", style: TextStyle(fontSize: 14)),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xffCFE1FF),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.wallet, size: 32),
                ),
                SizedBox(height: 6),
                Text("Top up", style: TextStyle(fontSize: 14)),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xffCFE1FF),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.attach_money_rounded, size: 32),
                ),
                SizedBox(height: 6),
                Text("Tarik tunai", style: TextStyle(fontSize: 14)),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xffCFE1FF),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.money, size: 32),
                ),
                SizedBox(height: 6),
                Text("Konferensi", style: TextStyle(fontSize: 14)),
              ],
            ),
          ],
        ),

        SizedBox(height: 25),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xffCFE1FF),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.wifi, size: 32),
                ),
                SizedBox(height: 6),
                Text("Kuota", style: TextStyle(fontSize: 14)),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xffCFE1FF),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.public, size: 32),
                ),
                SizedBox(height: 6),
                Text("Pulsa", style: TextStyle(fontSize: 14)),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xffCFE1FF),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.shopping_cart_outlined, size: 32),
                ),
                SizedBox(height: 6),
                Text("Ecommerce", style: TextStyle(fontSize: 14)),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xffCFE1FF),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.savings_outlined, size: 32),
                ),
                SizedBox(height: 6),
                Text("Nabung", style: TextStyle(fontSize: 14)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
