import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_4/decoration/set.dart';

class Menuapps extends StatelessWidget {
  const Menuapps({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Lihat Semua Promo",
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.blue[900],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ComponenMenu(
                iconApps: Icon(Icons.integration_instructions),
                labelApps: "Produk Online",
              ),
              ComponenMenu(
                iconApps: Icon(Icons.integration_instructions),
                labelApps: "Produk Online",
              ),
              ComponenMenu(
                iconApps: Icon(Icons.integration_instructions),
                labelApps: "Produk Online",
              ),
              ComponenMenu(
                iconApps: Icon(Icons.integration_instructions),
                labelApps: "Produk Online",
              ),
              ComponenMenu(
                iconApps: Icon(Icons.integration_instructions),
                labelApps: "Produk Online",
              ),
              ComponenMenu(
                iconApps: Icon(Icons.integration_instructions),
                labelApps: "Produk Online",
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ComponenMenu(
                iconApps: Icon(Icons.integration_instructions),
                labelApps: "Produk Online",
              ),
              ComponenMenu(
                iconApps: Icon(Icons.integration_instructions),
                labelApps: "Produk Online",
              ),
              ComponenMenu(
                iconApps: Icon(Icons.integration_instructions),
                labelApps: "Produk Online",
              ),
              ComponenMenu(
                iconApps: Icon(Icons.integration_instructions),
                labelApps: "Produk Online",
              ),
              ComponenMenu(
                iconApps: Icon(Icons.integration_instructions),
                labelApps: "Produk Online",
              ),
              ComponenMenu(
                iconApps: Icon(Icons.integration_instructions),
                labelApps: "Produk Online",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ComponenMenu extends StatelessWidget {
  final Icon iconApps;
  final String labelApps;

  const ComponenMenu({
    super.key,
    required this.iconApps,
    required this.labelApps,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ClassName.color4,
          ),
          child: Icon(Icons.home_max_outlined),
        ),
        SizedBox(height: 5),
        Text(
          "Produk Online",
          style: GoogleFonts.openSans(
            fontSize: 8,
            fontWeight: FontWeight.w400,
            color: ClassName.color2,
          ),
        ),
      ],
    );
  }
}
