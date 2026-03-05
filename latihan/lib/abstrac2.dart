 import 'abstrac.dart';
 
 class Mobil extends Transportasi {
    Mobil(String nama) : super(nama);

     @override 

     void gerakabstrak()  => print('$nama bergerak dengan roda empat');
  }

  class Motor extends Mobil { 
    Motor(String nama) : super(nama);

     @override 

     void gerakabstrak()  => print('$nama bergerak dengan roda dua'); 
  }


  void main() {
    var kendaraan = Mobil('F1') ..gerakabstrak();
  }