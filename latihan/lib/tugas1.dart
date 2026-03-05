// // class Siswa {
// //   String nama;
// //   String kelas;
// //   int nilai;

// //   Siswa(this.nama, this.kelas, this.nilai);

// //   void tampilData() {
// //     print("Nama  : $nama");
// //     print("Kelas : $kelas");
// //     print("Nilai : $nilai");
// //   }

// //   void cekLulus() {
// //     if (nilai >= 75) {
// //       print("Status: LULUS");
// //     } else {
// //       print("Status: TIDAK LULUS");
// //     }
// //   }
// // }

// // void main() {
// //   Siswa s1 = Siswa("Andi", "10 IPA 1", 80);

// //   Siswa s2 = Siswa("Budi", "10 IPA 2", 70);

// //   print("=== Data Siswa 1 ===");
// //   s1.tampilData();
// //   s1.cekLulus();

// //   print("");

// //   print("=== Data Siswa 2 ===");
// //   s2.tampilData();
// //   s2.cekLulus();
// // }

// class Siswa {
//   final String nama;
//   final String nis;
//   String kelas;
//   bool aktif;

//   Siswa(this.nama, this.nis, this.kelas, this.aktif);

//   void info() {
//     print("Nama   : $nama");
//     print("NIS    : $nis");
//     print("Kelas  : $kelas");
//     print("Status : ${aktif ? "Aktif" : "Tidak Aktif"}");
//     print("-------------------");
//   }
// }

// void main() {
//   Siswa s1 = Siswa("Andi", "12345", "10 IPA 1", true)
//     ..kelas = "11 IPA 1"
//     ..aktif = true;

//   Siswa s2 = Siswa("Budi", "67890", "10 IPS 2", false)
//     ..kelas = "11 IPS 2"
//     ..aktif = false;

// \
// ]
// \

// n
//   s1.info();
//   s2.info();
// }
