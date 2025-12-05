import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_4/decoration/set.dart';
import 'package:slicing_4/komponen/card.dart';
import 'package:slicing_4/komponen/cari.dart';

class Appbar1 extends StatelessWidget {
  Appbar1({super.key});

  @override
  Widget build(BuildContext context) {
    final double tinggi = MediaQuery.of(context).size.height;
    final double lebar = MediaQuery.of(context).size.width;
    // return Padding(
    //   padding: const EdgeInsets.all(15),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       CircleAvatar(backgroundImage: AssetImage("assets/profile1.jpg")),
    //       Container(
    //         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    //         // width: 250,
    //         // height: 20,
    //         decoration: BoxDecoration(
    //           color: Colors.grey.withOpacity(0.2),
    //           borderRadius: BorderRadius.circular(15),
    //         ),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           spacing: 10,
    //           children: [
    //             Icon(Icons.warning_rounded, color: Colors.green),
    //             Text("Waspada Judi Online! "),
    //           ],
    //         ),
    //       ),
    //       CircleAvatar(
    //         child: Icon(Icons.help),
    //         backgroundColor: Colors.grey.withOpacity(0.5),
    //       ),
    //     ],
    //   ),
    // );

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: tinggi * 0.4,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.topCenter,
              end: AlignmentGeometry.bottomCenter,
              colors: [ClassName.color1, ClassName.color5],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Alamat Kirim", style: ClassName.style6),
              Row(
                children: [
                  Text("pondok", style: ClassName.style1),
                  SizedBox(width: 5),
                  Container(
                    height: 10,
                    width: 20,
                    decoration: BoxDecoration(
                      color: ClassName.color5,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "utama",
                        style: GoogleFonts.openSans(
                          fontSize: 8,
                          color: ClassName.color1,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_drop_down, color: ClassName.color5),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chat_bubble_outline_rounded,
                      color: ClassName.color5,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notification_add, color: ClassName.color5),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      color: ClassName.color5,
                    ),
                  ),
                ],
              ),
              Text(
                "Perumahan Eco Village, Serpong Mekar Sa...",
                style: ClassName.style5,
              ),
              Cari1(),
            ],
          ),
        ),
        Positioned(
          top: 160,
          left: 20,
          right: 20,
          child: Container(
            width: double.infinity,
            // height: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentGeometry.topCenter,
                end: AlignmentGeometry.bottomCenter,
                colors: [ClassName.color2, ClassName.color5],
              ),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: ClassName.color5),

              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3,
                  offset: Offset(1, 2),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hai David!", style: ClassName.style2),
                      Text("Hai David!", style: ClassName.style2),
                      Spacer(),
                      Text("New Member"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ClassName.color5,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Card01(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
