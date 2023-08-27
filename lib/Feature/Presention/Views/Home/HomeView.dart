import 'package:ecomerceapp/Controllers/MainScreenProvider.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Widget/BottomNavBar.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Widget/CartPAge.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Widget/HomePage.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Widget/ProfilePage.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Widget/SearchPage.dart';
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
