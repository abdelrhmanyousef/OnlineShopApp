import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:ecomerceapp/Core/Utils/AppStyel.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Widget/LatestListView.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Widget/ListViewItems.dart';
import 'package:ecomerceapp/helper/shoes_model/shoes_model.dart';
import 'package:flutter/material.dart';

class WoMenWidget extends StatelessWidget {
  const WoMenWidget({
    super.key,
    required Future<List<ShoesModel>> female,
  }) : _female = female;

  final Future<List<ShoesModel>> _female;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListViewItems(
          male: _female,
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
          male: _female,
          hight: MediaQuery.of(context).size.height * 0.13,
          contahight: MediaQuery.of(context).size.height * 0.12,
          contawidth: MediaQuery.of(context).size.width * 0.28,
        )
      ],
    );
  }
}
