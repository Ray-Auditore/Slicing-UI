import 'package:flutter/material.dart';

class KomponenUi2 extends StatelessWidget {
  final String logo;
  final String text;

  const KomponenUi2({super.key, required this.logo, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 30, child: Image.asset('assets/arrow.png')),
        Text('top up'),
      ],
    );
  }
}
