import 'package:flutter/material.dart';

class Mnkereta extends StatelessWidget {
  final String text;
  final Widget icon;
  final Color warna;
  const Mnkereta({super.key, required this.text, required this.icon, required this.warna});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: warna,
          ),
          child: icon,
        ),
        Text(text)
      ],
    );
  }
}
