import 'package:flutter/material.dart';
import 'package:slicing_ui_4/komponen.dart';

class Promo extends StatelessWidget {
  Promo({super.key});

  final List<String> categories = [
    "11.11",
    "gajian",
    "riding",
    "food",
    "travel",
    "vacation",
    "hotel",
    "drinks",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "15 Vouchers",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Vouchers Plus",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.discount, size: 18),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Color(0xfff2f2f2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Masukkan kode voucher",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

           
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(Icons.card_giftcard, color: Colors.white, size: 35),
                  SizedBox(width: 10),

                  Expanded(
                    child: Text(
                      "Check-in Setiap Hari Koinnya *Syarat & ketentuan berlaku",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                    ),
                    child: Text("Klaim"),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

          
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: categories.map((text) {
                  return Container(
                    margin: EdgeInsets.only(right: 8),
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text(text),
                  );
                }).toList(),
              ),
            ),

            SizedBox(height: 20),

           
            Text(
              "Promo hari ini",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  promoCard("Diskon ongkir\nSampai 50%\nkhusus grab & shopee", Colors.cyanAccent),
                  SizedBox(width: 12),
                  promoCard("Buy 1 Get 1 Cemilan kekinian", Colors.orangeAccent),
                  SizedBox(width: 12),
                  promoCard("Buy 1 Gratis Yazid", Colors.blueAccent),
                  SizedBox(width: 12),
                  promoCard("Buy 1 Gratis turky", Colors.deepOrange),
                  SizedBox(width: 12),
                  promoCard("beli 1 gratis kamu", Colors.greenAccent),
                ],
              ),
            ),

            SizedBox(height: 30),

            // =======================
            // PROMO MAKANAN
            // =======================
            Text(
              "Promo Makanan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Container(
              padding: EdgeInsets.all(20),
              height: 150,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/banner-11.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),

            SizedBox(height: 30),

           
            Text(
              "Promo Liburan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  promoImageCard(
                    image: "assets/jogja.jpg",
                    title: "Jogjakarta",
                    desc: "Diskon 50%\nDengan menunjukan Boarding Pass",
                  ),
                  SizedBox(width: 20),
                  promoImageCard(
                    image: "assets/candi.jpg",
                    title: "Candi Borobudur",
                    desc: "Diskon 50%\nDengan menunjukkan Boarding Pass",
                  ),
                  SizedBox(width: 20),
                  promoImageCard(
                    image: "assets/candi.jpg",
                    title: "Candi Borobudur",
                    desc: "Diskon 50%\nDengan menunjukkan Boarding Pass",
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

          
            Text(
              "Promo Transportasi",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  promoImageCard(
                    image: "assets/banner-1.jpg",
                    title: "Rp 250.000",
                    desc: "Harga Spesial Dengan menunjukan Boarding Pass",
                  ),
                  SizedBox(width: 20),
                  promoImageCard(
                    image: "assets/banner-2.jpg",
                    title: "Rp 500.000",
                    desc: "Harga Spesial Dengan menunjukan Boarding Pass",
                  ),
                  SizedBox(width: 20),
                  promoImageCard(
                    image: "assets/banner-3.jpg",
                    title: "Rp 1.000.000",
                    desc: "Harga Spesial Dengan menunjukan Boarding Pass",
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),
            Komponen(gambar: 'assets/banner-10.png'),
            Komponen(gambar: 'assets/banner-11.png'),
            Komponen(gambar: 'assets/banner-12.png'),
          ],
        ),
      ),
    );
  }

    Widget promoCard(String text, Color color) {
    return Container(
      width: 200,
      padding: EdgeInsets.all(15),
      height: 110,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text),
    );
  }

 
  Widget promoImageCard({
    required String image,
    required String title,
    required String desc,
  }) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.purple.withOpacity(0.45),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              desc,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
