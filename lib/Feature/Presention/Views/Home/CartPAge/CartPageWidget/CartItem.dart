import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecomerceapp/Core/Utils/AppStyel.dart';
import 'package:ecomerceapp/helper/shoes_model/shoes_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CartItem extends StatefulWidget {
  CartItem(
      {super.key,
      required this.image,
      required this.name,
      required this.Price,
      required this.male});
  final String image;
  final String name;
  final String Price;
  late Future<List<ShoesModel>> male;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          const BoxShadow(
            blurRadius: .20,
            color: Colors.white,
            offset: Offset(1, 1),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Ionicons.heart_outline,
                    size: 30,
                  )
                ],
              ),
              CachedNetworkImage(
                  fit: BoxFit.fill, imageUrl: widget.image, height: 120),
              Text(
                widget.name,
                style: Styels.text20
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                (r"$" + "${widget.Price}"),
                style: Styels.text25
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
              )
            ]),
      ),
    );
  }
}
