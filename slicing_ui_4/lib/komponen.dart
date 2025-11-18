import 'package:flutter/material.dart';

class Komponen extends StatelessWidget {
  final String gambar;
  const Komponen({super.key , required this.gambar});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.fromLTRB(35, 0, 35, 20),
      child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(gambar),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
    );
  }
}