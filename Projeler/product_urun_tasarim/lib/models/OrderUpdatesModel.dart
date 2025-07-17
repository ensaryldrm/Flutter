import 'dart:convert';

List<OrderUpdatesModel> orderUpdatesModelFromJson(String str) =>
    List<OrderUpdatesModel>.from(
      json.decode(str).map((x) => OrderUpdatesModel.fromJson(x)),
    );

String orderUpdatesModelToJson(List<OrderUpdatesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OrderUpdatesModel {
  final String id;
  final String anaResim;
  final String ustBaslik;
  final String altBaslik;
  final String sonResim;

  OrderUpdatesModel({
    required this.id,
    required this.anaResim,
    required this.ustBaslik,
    required this.altBaslik,
    required this.sonResim,
  });

  factory OrderUpdatesModel.fromJson(Map<String, dynamic> json) =>
      OrderUpdatesModel(
        id: json["id"],
        anaResim: json["ana_resim"],
        ustBaslik: json["ust_baslik"],
        altBaslik: json["alt_baslik"],
        sonResim: json["son_resim"],
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "ana_resim": anaResim,
    "ust_baslik": ustBaslik,
    "alt_baslik": altBaslik,
    "son_resim": sonResim,
  };
}
