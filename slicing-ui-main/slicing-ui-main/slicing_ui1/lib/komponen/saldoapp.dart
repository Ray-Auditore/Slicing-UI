import 'package:flutter/material.dart';
import 'package:slicing_ui1/komponen/komponen_ui_2.dart';

class Saldoapp1 extends StatelessWidget {
  const Saldoapp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50, child: Image.asset('assets/wallet.png')),
            Column(children: [Text("55.000"), Text("1000 coins")]),
            SizedBox(width: 50),
            KomponenUi2(logo: 'assets/arrow.png ', text: 'bayar'),
            KomponenUi2(logo: 'assets/more.png ', text: 'lainnya'),
            KomponenUi2(logo: 'assets/plus.png ', text: 'top up'),
          ],
        ),
      ),
    );
  }
}
