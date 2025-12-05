import 'package:flutter/material.dart';
import 'package:slicing_4/decoration/set.dart';

class Cari1 extends StatelessWidget {
  const Cari1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: ClassName.color5,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: BoxConstraints(maxHeight: 35),
              prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.all(0),
            hintText:"Vitamin Untuk Anak" 
            ),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(100),
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: ClassName.color5, width: 0.8),
          ),
          child: Image.asset("assets/card-scan.png"),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(100),
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: ClassName.color5, width: 0.8),
          ),
          child: Image.asset("assets/favorite.png",),
        ),
      ],
    );
  }
}
