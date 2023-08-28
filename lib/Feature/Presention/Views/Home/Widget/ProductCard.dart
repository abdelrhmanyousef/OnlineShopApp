import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecomerceapp/Core/Utils/AppStyel.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.contahight,
    required this.contawidth,
    required this.image,
    required this.name,
    required this.id,
    required this.price,
    required this.category,
  });

  final double? contahight;
  final double? contawidth;
  final String image;
  final String name;
  final String id;
  final String price;
  final String category;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              blurRadius: 0.5,
              color: Colors.black38,
              offset: Offset(0, 2),
              spreadRadius: 1),
        ],
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      height: widget.contahight,
      width: widget.contawidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Ionicons.heart_outline,
                  size: 30,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.17,
            width: MediaQuery.of(context).size.width * 0.565,
            child: CachedNetworkImage(
              imageUrl: widget.image,
            ),
          ),
          Text(
            widget.name,
            style: Styels.text30.copyWith(color: Colors.black),
          ),
          Text(
            " Shoes",
            style: Styels.text30.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            widget.category,
            style: const TextStyle(color: Colors.black87),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                r"$" + "${widget.price}",
                style: Styels.text30.copyWith(color: Colors.black),
              ),
              const Spacer(),
              const Text(
                "Color",
                style: TextStyle(color: Colors.black87),
              ),
              const Icon(Ionicons.radio_button_on)
            ],
          )
        ]),
      ),
    );
  }
}
