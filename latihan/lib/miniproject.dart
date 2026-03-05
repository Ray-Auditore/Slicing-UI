class Buku {
  String? judul = " cantik adalah luka ";

  Buku({this.judul});

  void pinjam() => print("buku $judul sedang dipinjam");
}

class Siswa {
  String? nama = "budi";

  Siswa({this.nama});

  void PinjamBuku(Buku buku) {
    print("$nama meminjam buku berjudul");
    buku.pinjam();
  }
}
 
 void main(){
  var buku1 = Buku(judul: "laskar pelangi");
  print(buku1.judul);

  var siswa1 = Siswa(nama: "ani");
  siswa1.PinjamBuku(buku1);

  siswa1.PinjamBuku(buku1);
 }