import 'dart:convert';

List<Glasses> glassesFromJson(String str) => List<Glasses>.from(json.decode(str).map((x) => Glasses.fromJson(x)));

String glassesToJson(List<Glasses> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Glasses {
  int id;
  String name;
  String color;
  String image;
  String brand;
  int price;

  Glasses({
    required this.id,
    required this.name,
    required this.color,
    required this.image,
    required this.brand,
    required this.price,
  });

  factory Glasses.fromJson(Map<String, dynamic> json) => Glasses(
    id: json["id"],
    name: json["name"],
    color: json["color"],
    image: json["image"],
    brand: json["brand"],
    price: json["price"]
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "color": color,
    "image": image,
    "brand": brand,
    "price": price,
  };
}
