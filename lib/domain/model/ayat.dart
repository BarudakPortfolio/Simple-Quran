import 'audio.dart';

class Ayat {
  int? nomorAyat;
  String? teksArab;
  String? teksLatin;
  String? teksIndonesia;
  AudioModel? audio;

  Ayat(
      {this.nomorAyat,
      this.teksArab,
      this.teksLatin,
      this.teksIndonesia,
      this.audio});

  factory Ayat.fromJson(Map<String, dynamic> json) {
    return Ayat(
      nomorAyat: json['nomorAyat'],
      teksArab: json['teksArab'],
      teksLatin: json['teksLatin'],
      teksIndonesia: json['teksIndonesia'],
      audio: json['audio'] != null ? AudioModel.fromJson(json['audio']) : null,
    );
  }
}
