import 'audio.dart';
import 'ayat.dart';
import 'surat_selanjutnya.dart';

class Surat {
  int? nomor;
  String? nama;
  String? namaLatin;
  int? jumlahAyat;
  String? tempatTurun;
  String? arti;
  String? deskripsi;
  AudioModel? audioFull;
  List<Ayat>? ayat;
  SuratSelanjutnya? suratSelanjutnya;
  bool? suratSebelumnya;

  Surat(
      {this.nomor,
      this.nama,
      this.namaLatin,
      this.jumlahAyat,
      this.tempatTurun,
      this.arti,
      this.deskripsi,
      this.audioFull,
      this.ayat,
      this.suratSelanjutnya,
      this.suratSebelumnya});

  factory Surat.fromJson(Map<String, dynamic> json) {
    return Surat(
      nomor: json['nomor'],
      nama: json['nama'],
      namaLatin: json['namaLatin'],
      jumlahAyat: json['jumlahAyat'],
      tempatTurun: json['tempatTurun'],
      arti: json['arti'],
      deskripsi: json['deskripsi'],
      audioFull: json['audioFull'] != null
          ? AudioModel.fromJson(json['audioFull'])
          : null,
      ayat: json['ayat'] != null
          ? <Ayat>[]
          : json['ayat'].map((v) => Ayat.fromJson(v)).toList(),
      suratSelanjutnya: json['suratSelanjutnya'] != null
          ? SuratSelanjutnya.fromJson(json['suratSelanjutnya'])
          : null,
      suratSebelumnya: json['suratSebelumnya'],
    );
  }
}
