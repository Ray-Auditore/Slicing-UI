import 'package:flutter/material.dart';
import 'package:slicing_ui_4/janganlewatkan.dart';
import 'package:slicing_ui_4/komponen.dart';
import 'package:slicing_ui_4/menucard.dart';
import 'package:slicing_ui_4/menuitem.dart';
import 'package:slicing_ui_4/navbar.dart';
import 'package:slicing_ui_4/superdeal.dart';

class Homepage1 extends StatelessWidget {
  const Homepage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Navbar(),
            SizedBox(height: 20),
            MenuCard(),
            SizedBox(height: 20),
            Menuitem(),
            SizedBox(height: 20),
            Superdeal(),
            SizedBox(height: 20),
            Janganlewatkan(),
            SizedBox(height: 20),
            Komponen(gambar: 'assets/banner-10.png'),
            Komponen(gambar: 'assets/banner-11.png'),
            Komponen(gambar: 'assets/banner-12.png'),
          
          ],
        ),
      ),
    );
  }
}
