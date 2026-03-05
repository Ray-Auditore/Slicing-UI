
// class Barang {
//   void info() {
//     print("Ini adalah barang");
//   }
// }


// class Buku extends Barang {
//   @override
//   void info() {
//     print("Ini adalah buku pelajaran");
//   }
// }


// class Pensil extends Barang {
//   @override
//   void info() {
//     print("Ini adalah pensil untuk menulis");
//   }
// }


// class Tas extends Barang {
//   @override
//   void info() {
//     print("Ini adalah tas sekolah");
//   }
// }

// void main() {

//   Buku b1 = Buku();
//   Pensil p1 = Pensil();
//   Tas t1 = Tas();

//   b1.info();
//   p1.info();
//   t1.info();

//   print("---- Polymorphism ----");

//   Barang barang1 = Buku();
//   Barang barang2 = Pensil();
//   Barang barang3 = Tas();

//   barang1.info();
//   barang2.info();
//   barang3.info();
// }


class Kendaraan {
  String nama;
  int generasi;

  
  Kendaraan(this.nama, this.generasi);

 
  void info() {
    print('Nama     : $nama');
    print('Generasi : $generasi');
  }
}

class Mobil extends Kendaraan {
  String warna;

  
  Mobil(String nama, int generasi, this.warna) : super(nama, generasi);

  
  @override
  void info() {
    print('--- Data Mobil ---');
    super.info(); 
    print('Warna    : $warna'); 
    print(''); 
  }
}


class Motor extends Kendaraan {
  String warna;


  Motor(String nama, int generasi, this.warna) : super(nama, generasi);


  @override
  void info() {
    print('--- Data Motor ---');
    super.info(); 
    print('Warna    : $warna'); 
    print(''); 
  }
}