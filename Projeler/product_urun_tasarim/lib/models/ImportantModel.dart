import 'dart:convert';

List<ImportantModel> importantModelFromJson(String str) =>
    List<ImportantModel>.from(
      json.decode(str).map((x) => ImportantModel.fromJson(x)),
    );

String importantModelToJson(List<ImportantModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ImportantModel {
  final String id;
  final String anaResim;
  final String ustBaslik;
  final String altBaslik;

  ImportantModel({
    required this.id,
    required this.anaResim,
    required this.ustBaslik,
    required this.altBaslik,
  });

  factory ImportantModel.fromJson(Map<String, dynamic> json) => ImportantModel(
    id: json["id"],
    anaResim: json["ana_resim"],
    ustBaslik: json["ust_baslik"],
    altBaslik: json["alt_baslik"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "ana_resim": anaResim,
    "ust_baslik": ustBaslik,
    "alt_baslik": altBaslik,
  };
}
