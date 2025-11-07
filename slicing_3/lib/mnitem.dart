import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicing_3/mnkereta.dart';

class Mnitem extends StatelessWidget {
  const Mnitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
       
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Mnkereta(
            text: "Hotel",
            icon: Icon(LucideIcons.hotel, size: 35, color: Colors.blueAccent),
            warna: Colors.blueAccent.withOpacity(0.2),
          ),
          Mnkereta(
            text: "Kartu",
            icon: Icon(
              LucideIcons.creditCard,
              size: 35,
              color: Colors.blueAccent,
            ),

            warna: Colors.blueAccent.withOpacity(0.2),
          ),
          Mnkereta(
            text: "Logistik",
            icon: Icon(LucideIcons.gift, size: 35, color: Colors.blueAccent),
            warna: Colors.blueAccent.withOpacity(0.2),
          ),
          Mnkereta(
            text: "Lainnya",
            icon: Icon(
              LucideIcons.circleEllipsis,
              size: 35,
              color: Colors.blueAccent,
            ),

            warna: Colors.blueAccent.withOpacity(0.2),
          ),
        ],
      ),
    );
  }
}
