import 'package:flutter/material.dart';
import 'package:slicing_ui_4/menucard.dart';
import 'package:slicing_ui_4/navbar.dart';

class Homepage1 extends StatelessWidget {
  const Homepage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Navbar(), SizedBox(height: 20), MenuCard()]),
    );
  }
}
