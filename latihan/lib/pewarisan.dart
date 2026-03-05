// class Guru { 
//   String nama = 'budi'; 
//   int umur = 30;

// void mengajar() {
//   print('guru $nama sedang mengajar');
// }
// }

// class GuruPengganti extends Guru { 

//   void mengajar() {
//     print('guru pengganti $nama sedang mengajar');
//   }
// }

// void main()  {
//   var pengajar  = GuruPengganti();
//   print(pengajar.nama);
//   pengajar.mengajar();

// }


class Kucing {
  String jenis = "Pungs";

  void tidur() {
    print("Ada kucing jenis $jenis sedang tidur");
  }
}

class Anakkucing extends Kucing {
  String jenis = "Anggora";

  void tidur() {
    print("Ada kucing jenis $jenis sedang tidur");
  }
}

void main() {
  var hewan = Anakkucing();
  hewan.tidur(); 
}