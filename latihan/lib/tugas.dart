class Mobil {
  final String merk;
  final String warna;
  final int tahun;
  double kecepatan;
  bool mesinNyala;

  Mobil({
    required this.merk,
    required this.warna,
    required this.tahun,
    this.kecepatan = 0,
    this.mesinNyala = false,
  });

  factory Mobil.mati(String merk, String warna, int tahun) =>
      Mobil(merk: merk, warna: warna, tahun: tahun);

  void nyalakanMesin() {
    mesinNyala = true;
    print("Mesin mobil dinyalakan");
  }

  void matikanMesin() {
    mesinNyala = false;
    kecepatan = 0;
    print("Mesin mobil dimatikan");
  }

  String infoMobil() {
    return "Mobil $merk warna $warna, tahun $tahun, "
        "kecepatan $kecepatan km/jam, "
        "mesin nyala: $mesinNyala";
  }
}

