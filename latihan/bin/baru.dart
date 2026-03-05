// class Produk {
//   final String nama;
//   final int harga;
//   final bool import;

//   Produk(this.nama, this.harga, bool inputImport) : import = inputImport;

//   Produk.import(String nama, int harga) : this(nama, harga, true);

//   Produk.mahal(String nama, int harga) : this(nama, harga, false);

//   void info() {
//     print('Nama Produk : $nama');
//     print('Harga Produk: $harga');
//     print('Import      : $import');
//   }
// }

// class Seragam extends Produk {
//   String ukuran;

//   // Constructor subclass
//   Seragam(String nama, int harga, bool import, this.ukuran)
//       : super(nama, harga, import);

//   @override
//   void info() {
//     super.info();
//     print('Ukuran Barang: $ukuran');
//   }
// }

// void main() {
//   var produk1 = Produk.import('Sepatu', 500000)..info();
//   var produk2 = Produk.mahal('Tas', 750000)..info();
//   var produk3 = Seragam('Seragam', 1000000, true, 'L')..info();
// }

// class Pegawai {
//   String nama;
//   int gaji;

//   Pegawai(this.nama, this.gaji);

//   void info() {
//     print('Nama = $nama');
//     print('Gaji = $gaji');
//   }
// }

// class Manager extends Pegawai {
//   int tunjangan;

//   Manager(String nama, int gaji, this.tunjangan) : super(nama, gaji);

//   @override
//   void info() {
//     super.info();
//     print('Tunjangan = $tunjangan');
//   }
// }

// void main() {
//   var pegawai1 = Manager('budi', 5000, 1000);
//   pegawai1.info();

//   var pegawai2 = Pegawai('andi', 5000);
//   pegawai2.info();
// }

class Kendaraan {
  String nama;
  int kecepatan;

  Kendaraan(this.nama, this.kecepatan);

  void info() {
    print('Nama = $nama');
    print('Kecepatan = $kecepatan');
  }
}

class Manager extends Kendaraan {
  int tunjangan;

  Manager(String nama, int kecepatan, this.tunjangan) : super(nama, kecepatan);

  @override
  void info() {
    super.info();
    print('Tunjangan = $tunjangan');
  }
}

void main() {
  var pegawai1 = Manager('budi', 5000, 1000);
  pegawai1.info();

 
}

