import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:ecomerceapp/Core/Utils/AppStyel.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/HomeWidget/LatestListView.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/HomeWidget/ListViewItems.dart';
import 'package:ecomerceapp/helper/shoes_model/shoes_model.dart';
import 'package:flutter/material.dart';

class MenWidget extends StatelessWidget {
  const MenWidget({
    super.key,
    required Future<List<ShoesModel>> male,
  }) : _male = male;

  final Future<List<ShoesModel>> _male;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListViewItems(
          axis: Axis.horizontal,
          male: _male,
          hight: MediaQuery.of(context).size.height * 0.460,
          contahight: MediaQuery.of(context).size.height * 0.7,
          contawidth: MediaQuery.of(context).size.width * 0.7,
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Latest Shoes",
                style: Styels.text25,
              ),
              Row(
                children: [
                  Text(
                    "Show All",
                    style: Styels.text20,
                  ),
                  Icon(
                    AntIcons.caretRightFilled,
                    size: 20,
                  )
                ],
              )
            ],
          ),
        ),
        LatestListViewItems(
          male: _male,
          hight: MediaQuery.of(context).size.height * 0.13,
          contahight: MediaQuery.of(context).size.height * 0.12,
          contawidth: MediaQuery.of(context).size.width * 0.28,
        )
      ],
    );
  }
}
