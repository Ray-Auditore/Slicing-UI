  abstract class Transportasi {
    String nama; 

    Transportasi(this.nama);

    void geraknormal() {
      print('$nama bergerak dengan kecepatan normal.');
    }

    void gerakabstrak();
  }
