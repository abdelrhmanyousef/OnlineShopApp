import 'package:ecomerceapp/Core/Utils/AppStyel.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/CustomTabBar.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/HomeWidget/KidsWidget.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/HomeWidget/MenWidget.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/HomeWidget/WomenWidget.dart';

import 'package:ecomerceapp/helper/Service.dart';
import 'package:ecomerceapp/helper/shoes_model/shoes_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
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

  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/top_image.png"),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Athletics Shoes Collection ",
                    style: Styels.text40,
                  ),
                  CustomTapBar(tabController: _tabController),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.21),
            child: TabBarView(controller: _tabController, children: [
              MenWidget(male: _male),
              WoMenWidget(female: _Female),
              KidsWidget(
                Kids: _Kids,
              )
            ]),
          )
        ],
      ),
    ));
  }
}
