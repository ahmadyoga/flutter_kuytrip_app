// To parse this JSON data, do
//
//     final kuytrip = kuytripFromJson(jsonString);

import 'dart:convert';

Kuytrip kuytripFromJson(String str) => Kuytrip.fromJson(json.decode(str));

String kuytripToJson(Kuytrip data) => json.encode(data.toJson());

class Kuytrip {
  Kuytrip({
    required this.category,
    required this.topDestinasi,
  });

  List<Category> category;
  List<TopDestinasi> topDestinasi;

  factory Kuytrip.fromJson(Map<String, dynamic> json) => Kuytrip(
        category: List<Category>.from(
            json["category"].map((x) => Category.fromJson(x))),
        topDestinasi: List<TopDestinasi>.from(
            json["top_destinasi"].map((x) => TopDestinasi.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "category": List<dynamic>.from(category.map((x) => x.toJson())),
        "top_destinasi":
            List<dynamic>.from(topDestinasi.map((x) => x.toJson())),
      };
}

class Category {
  Category({
    required this.title,
    required this.image,
  });

  String title;
  String image;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        title: json["title"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "image": image,
      };
}

class TopDestinasi {
  TopDestinasi({
    required this.tempat,
    required this.lokasi,
  });

  String tempat;
  String lokasi;

  factory TopDestinasi.fromJson(Map<String, dynamic> json) => TopDestinasi(
        tempat: json["tempat"],
        lokasi: json["lokasi"],
      );

  Map<String, dynamic> toJson() => {
        "tempat": tempat,
        "lokasi": lokasi,
      };
}
