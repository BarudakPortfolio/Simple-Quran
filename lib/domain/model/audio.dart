class AudioModel {
  String? audio1;
  String? audio2;
  String? audio3;
  String? audio4;
  String? audio5;

  AudioModel({this.audio1, this.audio2, this.audio3, this.audio4, this.audio5});

  factory AudioModel.fromJson(Map<String, dynamic> json) {
    return AudioModel(
      audio1: json['01'],
      audio2: json['02'],
      audio3: json['03'],
      audio4: json['04'],
      audio5: json['05'],
    );
  }
}
