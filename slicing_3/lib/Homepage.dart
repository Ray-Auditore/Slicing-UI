import 'package:flutter/material.dart';
import 'package:slicing_3/menuatas.dart';

class Homepage1 extends StatelessWidget {
  const Homepage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage('assets/Stasiun.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Menuatas1(),
                  ),
                ),
                Positioned(
                  right: 20,
                  left: 20,
                  bottom: -50,
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.amberAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
