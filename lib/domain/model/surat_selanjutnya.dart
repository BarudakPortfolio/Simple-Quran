class SuratSelanjutnya {
  int? nomor;
  String? nama;
  String? namaLatin;
  int? jumlahAyat;

  SuratSelanjutnya({this.nomor, this.nama, this.namaLatin, this.jumlahAyat});

  factory SuratSelanjutnya.fromJson(Map<String, dynamic> json) {
    return SuratSelanjutnya(
      nomor: json['nomor'],
      nama: json['nama'],
      namaLatin: json['namaLatin'],
      jumlahAyat: json['jumlahAyat'],
    );
  }
}
