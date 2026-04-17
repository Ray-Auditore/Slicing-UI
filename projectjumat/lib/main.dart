import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Assalamu'alaikum"),
                        Text(
                          "Jago Syariah",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 10),
                        Icon(Icons.notifications),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Kantong Utama"), Text("Rp49.157")],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      color: Colors.grey[300],
                      child: Text("Aktivitas Terakhir"),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [boxMenu("Transfer & Bayar"), boxMenu("Scan QRIS")],
              ),

              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Spotlight",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Lihat Semua"),
                  ],
                ),
              ),

              Container(
                height: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 16),
                      bannerItem("Banner 1"),
                      SizedBox(width: 10),
                      bannerItem("Banner 2"),
                      SizedBox(width: 10),
                      bannerItem("Banner 3"),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Plan Ahead",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Tutup"),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.all(16),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.assignment, size: 40),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sering lupa bayar tagihan?"),
                        Text(
                          "Buat Rencana Pembayaran",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shortcut",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Edit"),
                  ],
                ),
              ),

              // Grid Shortcut
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        shortcutBox("Kantong Utama"),
                        shortcutBox("Investasi"),
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        shortcutBox("Jago Amal"),
                        shortcutBox("Saldo Saya"),
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        shortcutBox("Auto Budgeting"),
                        shortcutBox("Ajak Teman"),
                      ],
                    ),

                    SizedBox(height: 10),

                    Container(
                      height: 80,
                      width: double.infinity,
                      alignment: Alignment.center,
                      color: Colors.purple[100],
                      child: Text("Tambah Shortcut"),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 80),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "Kantong",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: "Transaksi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Kartu",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: "Lainnya",
          ),
        ],
      ),
    );
  }
}

Widget boxMenu(String text) {
  return Container(
    width: 160,
    height: 60,
    alignment: Alignment.center,
    margin: EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 3)),
      ],
    ),
    child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
  );
}

Widget bannerItem(String text) {
  return Container(
    width: 300,
    decoration: BoxDecoration(
      color: Colors.purple,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Center(
      child: Text(text, style: TextStyle(color: Colors.white)),
    ),
  );
}

Widget shortcutBox(String text) {
  return Container(
    height: 100,
    width: 170,
    alignment: Alignment.center,
    color: Colors.white,
    child: Text(text),
  );
}
