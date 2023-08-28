import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecomerceapp/Core/Utils/AppStyel.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Widget/CustomTabBar.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Widget/LatestListView.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Widget/ListViewItems.dart';
import 'package:flutter/material.dart';
import 'package:antdesign_icons/antdesign_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

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
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.265),
            child: TabBarView(controller: _tabController, children: [
              Column(
                children: [
                  ListViewItems(
                    hight: MediaQuery.of(context).size.height * 0.405,
                    contahight: MediaQuery.of(context).size.height,
                    contawidth: MediaQuery.of(context).size.width * 0.6,
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
                    hight: MediaQuery.of(context).size.height * 0.13,
                    contahight: MediaQuery.of(context).size.height * 0.12,
                    contawidth: MediaQuery.of(context).size.width * 0.28,
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.405,
                    color: Colors.green,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.405,
                    color: Colors.blue,
                  ),
                ],
              ),
            ]),
          )
        ],
      ),
    ));
  }
}
