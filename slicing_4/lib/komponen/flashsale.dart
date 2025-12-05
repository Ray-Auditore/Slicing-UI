import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_4/decoration/set.dart';

class Flashsale extends StatelessWidget {
  const Flashsale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
      decoration: BoxDecoration(color: ClassName.color3),
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
                kontenFl(),
                kontenFl(),
                kontenFl(),
                kontenFl(),
                kontenFl(),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class kontenFl extends StatelessWidget {
  // final String gambar;
  // final String Text;
  const kontenFl({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ClassName.color5,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(width: double.infinity, child: Image.asset("ae.webp")),
          Container(
            height: 15,
            margin: EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: ClassName.color1,
              borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
            ),
            child: Center(
              child: Text(
                "Kinder Joy 65 gram",
                style: GoogleFonts.openSans(
                  fontSize: 8,
                  color: ClassName.color5,
                ),
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
    );
  }
}
