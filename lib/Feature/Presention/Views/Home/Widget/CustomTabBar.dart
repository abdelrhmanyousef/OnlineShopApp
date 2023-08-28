import 'package:ecomerceapp/Core/Utils/AppStyel.dart';
import 'package:flutter/material.dart';

class CustomTapBar extends StatelessWidget {
  const CustomTapBar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.transparent,
        controller: _tabController,
        isScrollable: true,
        labelColor: Colors.white,
        labelStyle: Styels.text25,
        unselectedLabelColor: Colors.grey.withOpacity(0.3),
        tabs: const [
          Tab(
            text: "  Men Shoes",
          ),
          Tab(
            text: "  Women Shoes",
          ),
          Tab(
            text: "  Kids Shoes",
          )
        ],
      ),
    );
  }
}
