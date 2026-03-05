import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.amber,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text("judul", style: TextStyle(fontSize: 20), ),
            ),

            Container(
              height: 200,
              margin: EdgeInsets.all(10),
              color: Colors.red,
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    margin: EdgeInsets.only(left: 10, bottom: 10, right: 5),
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    margin: EdgeInsets.only(right: 10, bottom: 10, left: 5),
                    color: Colors.red,
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  5,
                  (index) => Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Expanded(child: Container(color: Colors.blue)),
                  Expanded(child: Container(color: Colors.yellow)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
