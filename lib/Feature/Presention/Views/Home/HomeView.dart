import 'package:ecomerceapp/Controllers/MainScreenProvider.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/CartPAge/CartPAge.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/HomeWidget/BottomNavBar.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/HomeWidget/HomePage.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/ProfilePage.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Home/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  List<Widget> PageList = const [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenProvider>(
      builder: (context, mainScreenProvider, child) {
        return Scaffold(
          body: PageList[mainScreenProvider.Pageindex],
          bottomNavigationBar:
              BottomNavBar(mainScreenProvider: mainScreenProvider),
        );
      },
    );
  }
}
