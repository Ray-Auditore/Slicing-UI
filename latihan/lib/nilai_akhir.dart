void main() {
  int tugasAkhir = 80;
  int sts = 70;
  int sas = 90;

  double nilaiAkhir = tugasAkhir * 0.3 + sts * 0.3 + sas * 0.4;
  print("Nilai Akhir: $nilaiAkhir");
  String statusLulus = nilaiAkhir >= 85 ? "Lulus" : "Tidak Lulus";

  if (nilaiAkhir >= 85) {
    print("Grade: A");
  } else if (nilaiAkhir >= 70) {
    print("Grade: B");
  } else if (nilaiAkhir >= 55) {
    print("Grade: C");
  } else if (nilaiAkhir >= 40) {
    print("Grade: D");
  } else {
    print("Grade: E");
  }

  print("Status Lulus: $statusLulus");

 
 
}
 



