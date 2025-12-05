import 'package:flutter/material.dart';

class Latihan01 extends StatelessWidget {
  const Latihan01({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.3,
            width: double.infinity,
            color: Colors.cyanAccent,
          ),
          SizedBox(
            height: height * 0.3,
            width: width * 0.3,
            child: Image.asset('assets/post5.jpg'),
          ),
        ],
      ),
    );
  }
}
