import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class Trip extends StatelessWidget {
  const Trip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.amberAccent,
        image: DecorationImage(image: AssetImage("assets/background1.png" ), fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            child: Icon(LucideIcons.shipWheel, size: 40, color: Colors.white),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trip Perjalanan",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Rencanakan Perjalanan",
                style: TextStyle(fontSize: 13, color: Colors.indigoAccent),
              ),
              Text(
                "Terbaikmu",
                style: TextStyle(fontSize: 13, color: Colors.indigoAccent),
              ),
            ],
          ),
          SizedBox(width: 12),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1.5, color: Colors.white),
            ),
            child: Text("buat", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
