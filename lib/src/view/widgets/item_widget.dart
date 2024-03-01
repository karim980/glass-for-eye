import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  var height;
  String image;
  String title;
  String color;
  int price;

  ItemWidget({
    super.key,
    this.height,
    required this.image,
    required this.title,
    required this.color,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: height,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Image(image: NetworkImage(image)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, overflow: TextOverflow.ellipsis),
              Text(
                '$color,',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 8,),
              Text('\$ $price'.toString(), overflow: TextOverflow.ellipsis),
            ],
          ),
        )
      ],
    );
  }
}
