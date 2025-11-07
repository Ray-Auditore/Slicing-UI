import 'package:flutter/material.dart';

class Banner1 extends StatelessWidget {
  const Banner1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/banner-1.png"),
                  fit: BoxFit.cover,
                  opacity: 0.7,
                ),
              ),
            ),
            Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/banner-2.png"),
                  fit: BoxFit.cover,
                  opacity: 0.7,
                ),
              ),
            ),
            Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/banner-3.png"),
                  fit: BoxFit.cover,
                  opacity: 0.7,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
