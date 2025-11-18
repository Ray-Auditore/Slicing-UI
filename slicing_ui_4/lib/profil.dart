import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profil"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.grey[300],
                    backgroundImage: AssetImage('assets/profile1.jpg'),
                  ),

                  SizedBox(width: 15),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nayaka bin Cipang",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "cinaipit123@gmail.com",
                        style: TextStyle(color: Colors.grey),
                      ),

                      SizedBox(height: 3),

                      Text(
                        "+62812345678",
                        style: TextStyle(color: Colors.grey),
                      ),

                      SizedBox(height: 10),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.cyan[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star, size: 16),
                            SizedBox(width: 5),
                            Text("Diamond"),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Icon(Icons.edit, size: 20),
                ],
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),

            SizedBox(height: 10),

            ListTile(
              leading: Icon(Icons.receipt_long),
              title: Text("My Orders"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.book),
              title: Text("My Subscription"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.percent),
              title: Text("Promo"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text("Payment"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text("Help"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.language),
              title: Text("Language"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),

            SizedBox(height: 30),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.percent), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "",
          ),
        ],
      ),
    );
  }
}
