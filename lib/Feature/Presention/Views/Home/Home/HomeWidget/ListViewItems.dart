import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/ProductCard.dart';
import 'package:ecomerceapp/helper/shoes_model/shoes_model.dart';
import 'package:flutter/material.dart';

class ListViewItems extends StatelessWidget {
  ListViewItems({
    super.key,
    this.hight,
    this.contahight,
    this.contawidth,
    required this.male,
    required this.axis,
  });
  final double? hight;
  final double? contahight;
  final double? contawidth;
  late Future<List<ShoesModel>> male;
  final Axis axis;

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
              scrollDirection: axis,
              itemBuilder: (context, index) {
                final shoe = snapshot.data![index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: ProductCard(
                      contahight: contahight,
                      contawidth: contawidth,
                      image: shoe.imageUrl![1],
                      name: shoe.name!,
                      id: shoe.id!,
                      price: shoe.price!,
                      category: shoe.category!),
                );
              },
            );
          },
        ));
  }
}
