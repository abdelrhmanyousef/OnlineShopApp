import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecomerceapp/helper/shoes_model/shoes_model.dart';
import 'package:flutter/material.dart';

class LatestListViewItems extends StatelessWidget {
  LatestListViewItems({
    super.key,
    this.hight,
    this.contahight,
    this.contawidth,
    required this.male,
  });
  final double? hight;
  final double? contahight;
  final double? contawidth;
  late Future<List<ShoesModel>> male;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: hight,
        child: FutureBuilder<List<ShoesModel>>(
          future: male,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text("Error${snapshot.error}");
            } else
              final male = snapshot.data;
            return ListView.builder(
              itemCount: snapshot.data!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final shoe = snapshot.data![index];
                return LatestShoes(
                    image: shoe.imageUrl![1],
                    contahight: contahight,
                    contawidth: contawidth);
              },
            );
          },
        ));
  }
}

class LatestShoes extends StatelessWidget {
  const LatestShoes({
    super.key,
    required this.contahight,
    required this.contawidth,
    required this.image,
  });

  final double? contahight;
  final double? contawidth;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
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
          child: CachedNetworkImage(imageUrl: image)),
    );
  }
}
