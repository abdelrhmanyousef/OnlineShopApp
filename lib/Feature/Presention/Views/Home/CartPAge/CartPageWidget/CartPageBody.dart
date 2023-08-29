import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/CustomTabBar.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/HomeWidget/KidsWidget.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/HomeWidget/MenWidget.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/HomeWidget/WomenWidget.dart';
import 'package:ecomerceapp/helper/Service.dart';
import 'package:ecomerceapp/helper/shoes_model/shoes_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
                      icon: Icon(
                        Ionicons.close,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
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
      ],
    );
  }
}
