class KuyTripModel {
  List<Category>? category;
  List<TopDestinasi>? topDestinasi;

  KuyTripModel({this.category, this.topDestinasi});

  KuyTripModel.fromJson(Map<String, dynamic> json) {
    if (json['category'] != null) {
      category = <Category>[];
      json['category'].forEach((v) {
        category!.add(Category.fromJson(v));
      });
    }
    if (json['top_destinasi'] != null) {
      topDestinasi = <TopDestinasi>[];
      json['top_destinasi'].forEach((v) {
        topDestinasi!.add(TopDestinasi.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.map((v) => v.toJson()).toList();
    }
    if (topDestinasi != null) {
      data['top_destinasi'] = topDestinasi!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Category {
  late String title;
  late String image;

  Category({required this.title, required this.image});

  Category.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['image'] = image;
    return data;
  }
}

class TopDestinasi {
  late String tempat;
  late String lokasi;
  late String image;

  TopDestinasi(
      {required this.tempat, required this.lokasi, required this.image});

  TopDestinasi.fromJson(Map<String, dynamic> json) {
    tempat = json['tempat'];
    lokasi = json['lokasi'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tempat'] = tempat;
    data['lokasi'] = lokasi;
    data['image'] = image;
    return data;
  }
}
