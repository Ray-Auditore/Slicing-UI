import 'package:flutter/material.dart';
import 'package:slicing_4/decoration/set.dart';
import 'package:slicing_4/komponen/appbar.dart';
import 'package:slicing_4/komponen/flashsale.dart';
import 'package:slicing_4/komponen/ikanbanner.dart';
import 'package:slicing_4/komponen/menuaplikasi.dart';

class Homepage1 extends StatelessWidget {
  const Homepage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClassName.color5,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Appbar1(),
              SizedBox(height: 30),
              IklanBanner(),
              SizedBox(height: 10),
              Menuapps(),
              SizedBox(height: 10),
              Flashsale(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             
              IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.home),
              ),
              IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.discount),
              ),
              IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.message),
              ),
              IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.shopping_cart_checkout_outlined  ),
              ),
            ],
          ),
      ),
    );
  }
}
