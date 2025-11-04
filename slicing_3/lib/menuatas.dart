import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class Menuatas1 extends StatelessWidget {
  const Menuatas1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(" selamat pagi", style: TextStyle(fontSize: 15)),
            Text(" Rayyan Ghibran Ananta", style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(width: 5,),
        IconButton(onPressed: (){}, icon: Icon(Icons.home,) ),
      
      ],
    );
  }
}
