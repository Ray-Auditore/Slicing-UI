import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Flashsale1 extends StatelessWidget {
  const Flashsale1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Flash Sale",
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: [
                KontenFl(),
                KontenFl(),
                KontenFl(),
                KontenFl(),
                KontenFl(),
                SizedBox(width: 10),
              ],
            ),
          ),
          SizedBox(height: 15),
        
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: [
                KontenFl(),
                KontenFl(),
                KontenFl(),
                KontenFl(),
                KontenFl(),
                SizedBox(width: 10),
              ],
            ),
            
            
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: [
                KontenFl(),
                KontenFl(),
                KontenFl(),
                KontenFl(),
                KontenFl(),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KontenFl extends StatelessWidget {
  // final String gambar;
  // final String Text;
  const 
  KontenFl({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView( scrollDirection: Axis.horizontal,
        child: Column(
          
          children: [
            SizedBox(width: double.infinity, child: Image.asset("assets/superindo.png")),
            Container(
              height: 15,
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
              ),
              child: Center(
                child: Text(
                  "Kinder Joy 65 gram",
                  style: GoogleFonts.openSans(fontSize: 8, color: Colors.white),
                ),
              ),
            ),
            //ini untuk informasi produk
            Text(
              "Kinder Joy jajanan anak kekinian",
              style: GoogleFonts.openSans(
                fontSize: 8,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Merk Kinder warna merah",
              style: GoogleFonts.openSans(
                fontSize: 8,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Rp. 15.000,-",
              style: GoogleFonts.openSans(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Produk Online",
              style: GoogleFonts.openSans(
                fontSize: 6,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
