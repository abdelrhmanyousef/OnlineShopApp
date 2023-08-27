// ignore_for_file: prefer_const_constructors

import 'package:ecomerceapp/Controllers/MainScreenProvider.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/Widget/CustomBottomNav.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.mainScreenProvider,
  });
  final MainScreenProvider mainScreenProvider;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomBottomNav(
              ontap: () {
                mainScreenProvider.PageIndex = 0;
              },
              icon: mainScreenProvider.Pageindex == 0
                  ? Ionicons.home
                  : Ionicons.home_outline,
            ),
            CustomBottomNav(
              ontap: () {
                mainScreenProvider.PageIndex = 1;
              },
              icon: mainScreenProvider.Pageindex == 1
                  ? Ionicons.search
                  : Ionicons.search_outline,
            ),
            CustomBottomNav(
              ontap: () {
                mainScreenProvider.PageIndex = 2;
              },
              icon:
                  mainScreenProvider.Pageindex == 2 ? Ionicons.add : Icons.add,
            ),
            CustomBottomNav(
              ontap: () {
                mainScreenProvider.PageIndex = 3;
              },
              icon: mainScreenProvider.Pageindex == 3
                  ? Ionicons.cart
                  : Ionicons.cart_outline,
            ),
            CustomBottomNav(
              ontap: () {
                mainScreenProvider.PageIndex = 4;
              },
              icon: mainScreenProvider.Pageindex == 4
                  ? Ionicons.person
                  : Ionicons.person_outline,
            )
          ],
        ),
      ),
    ));
  }
}
