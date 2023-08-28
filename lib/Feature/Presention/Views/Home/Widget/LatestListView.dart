import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LatestListViewItems extends StatelessWidget {
  const LatestListViewItems({
    super.key,
    this.hight,
    this.contahight,
    this.contawidth,
  });
  final double? hight;
  final double? contahight;
  final double? contawidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hight,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black45,
                        spreadRadius: 1,
                        blurRadius: 0.8,
                        offset: Offset(0, 1))
                  ]),
              height: contahight,
              width: contawidth,
              child: CachedNetworkImage(
                imageUrl:
                    "https://d326fntlu7tb1e.cloudfront.net/uploads/3d2b87c6-6450-4751-be73-7b13b2f7e284-GV9439_a1.webp",
              ),
            ),
          );
        },
      ),
    );
  }
}
