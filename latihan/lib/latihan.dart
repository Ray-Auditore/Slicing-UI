// class motor {
//   String merk = "Honda";
//   String warna = "Hitam";
//   int tahun = 2022;
//   int cc = 150;
//   String jenis = "Matic";

// }
// void main() {
//   motor motorr = motor();

//   print(motorr.merk);
//   print(motorr.warna);
//   print(motorr.tahun);
//   print(motorr.cc);
//   print(motorr.jenis);
// }

// class Sepeda {
//   String merk = "Polygon";
//   String warna = "Biru";
//   int tahun = 2021;
//   String jenis = "Gunung";

//   void maju() {
//     print("Sepeda maju");
//   }

//   void rem() {
//     print("Sepeda berhenti");
//   }

//   void belokKiri(String arah) {
//     print("Sepeda belok $arah");
//   }

//   void belokKanan(String arah) {
//     print("Sepeda belok $arah");
//   }

//   void main() {
//     Sepeda sepedaa = Sepeda();

//     sepedaa.rem();
//     sepedaa.belokKiri("kiri");
//     sepedaa.belokKanan("kanan");
//   }
// }

// class Mahasiswa {

//   String nama;
//   int umur;
//   double ipk;

//   Mahasiswa({required this.nama, required this.umur, required this.ipk});

//   bool isLulus() => ipk >= 3.0;

//   String infoMahasiswa() =>
//       "Nama: $nama, Umur: $umur, IPK: $ipk";
// }

// void main() {

//   Mahasiswa mhs = Mahasiswa(nama: "Budi", umur: 20, ipk: 3.5);

//   print("Informasi Mahasiswa:");
//   print(mhs.infoMahasiswa());
//   print("Apakah mahasiswa lulus? ${mhs.isLulus() ? 'Ya' : 'Tidak'}");
// }

// class Person {
//   String nama = "Andi";
//   int? umur;
//   final String alamat = "Jakarta";

//   void makan() {
//     print(" sedang makan");
//   }
// }
// void main(){
//   var manusia = Person();

// }

// class Women {
//        String nama = "maryam";
//        void mood() => print("tidak menentu, kamu salah");

//        void main() {
//          Women women = Women();
//          women.mood();
//        }

// }

class Orang {
  String nama;
  String alamat;
  int umur;

  Orang(this.nama, this.alamat, this.umur);

  void makan() => print("Hei $nama, makan dulu sana");
}

void main() {
  Orang orang1 = Orang("Rayyan", "Jakarta", 20);

  print(orang1.nama);
  print(orang1.umur);

  orang1.makan();
}
