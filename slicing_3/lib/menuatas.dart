import 'package:flutter/material.dart';
import 'package:slicing_3/buttonmn.dart';

class Menuatas1 extends StatelessWidget {
  const Menuatas1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('selamat pagi ', style: TextStyle(fontSize: 12)),
              Text(
                'Rayyan Ghibran Ananta',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
          Row(spacing: 10, children: [Buttonmn(), Buttonmn(), Buttonmn()]),
        ],
      ),
    );
  }
}
