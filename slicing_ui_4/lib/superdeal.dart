import 'package:flutter/material.dart';

class Superdeal extends StatelessWidget {
 const Superdeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Super deal hari ini",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(height: 15),

        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            children: [
              Container(
                width: 180,
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Color(0xffA9F5F2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Diskon ongkir Sampai 50%",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "khusus grab & shoope",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),

              Container(
                width: 180,
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Color(0xffFEBE8C),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Buy 1 get 1",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text("cemilan kekinian", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),

              Container(
                width: 180,
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Color(0xffFFD966),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Beli 2 Gratis 1",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text("khusus minuman", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
