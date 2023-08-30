// ignore_for_file: prefer_const_constructors

import 'package:ecomerceapp/Feature/Presention/Views/Home/CartPAge/CartPageWidget/CartItem.dart';
import 'package:ecomerceapp/helper/shoes_model/shoes_model.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class MenWidgetCart extends StatelessWidget {
  const MenWidgetCart({
    super.key,
    required Future<List<ShoesModel>> male,
  }) : _male = male;

  final Future<List<ShoesModel>> _male;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ShoesModel>>(
      future: _male,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text("Error${snapshot.error}");
        } else
          final male = snapshot.data;
        return StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          itemCount: snapshot.data!.length,
          scrollDirection: Axis.vertical,
          staggeredTileBuilder: (index) => StaggeredTile.extent(
              (index % 2 == 0) ? 1 : 1,
              (index % 4 == 1 || index % 4 == 3)
                  ? MediaQuery.of(context).size.height * 0.42
                  : MediaQuery.of(context).size.height * 0.4),
          itemBuilder: (context, index) {
            final shoe = snapshot.data![index];
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: CartItem(
                  name: shoe.name!,
                  Price: shoe.price!,
                  image: shoe.imageUrl![0],
                  male: _male,
                ));
          },
        );
      },
    );
  }
}
