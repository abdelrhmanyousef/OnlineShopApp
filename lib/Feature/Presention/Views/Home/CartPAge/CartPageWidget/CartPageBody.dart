import 'package:ecomerceapp/Feature/Presention/Views/Home/CartPAge/CartPageWidget/CartItem.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/CartPAge/CartPageWidget/KidsWidgetcart.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/CartPAge/CartPageWidget/MenWidgetcart.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/CartPAge/CartPageWidget/WomenWidgetcart.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/CustomTabBar.dart';

import 'package:ecomerceapp/helper/Service.dart';
import 'package:ecomerceapp/helper/shoes_model/shoes_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class CartPageBody extends StatefulWidget {
  const CartPageBody({super.key});

  @override
  State<CartPageBody> createState() => _CartPageBodyState();
}

class _CartPageBodyState extends State<CartPageBody>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);
  late Future<List<ShoesModel>> _male;
  late Future<List<ShoesModel>> _Female;
  late Future<List<ShoesModel>> _Kids;

  void getmal() {
    _male = Helper().GetMale();
  }

  void getfemal() {
    _Female = Helper().GetFemal();
  }

  void getKids() {
    _Kids = Helper().GetKids();
  }

  @override
  void initState() {
    super.initState();
    getmal();
    getfemal();
    getKids();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/top_image.png"),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(6, 12, 16, 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Ionicons.close,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Ionicons.filter,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              CustomTapBar(tabController: _tabController),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.18,
              left: 16,
              right: 12),
          child: TabBarView(controller: _tabController, children: [
            MenWidgetCart(male: _male),
            WomenWidgetCart(women: _Female),
            KidsWidgetCart(
              male: _Kids,
            )
          ]),
        )
      ],
    );
  }
}
