import 'package:flutter/material.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({
    super.key,
    this.hight,
    this.contahight,
    this.contawidth,
  });
  final double? hight;
  final double? contahight;
  final double? contawidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hight,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey,
                ),
                height: contahight,
                width: contawidth),
          );
        },
      ),
    );
  }
}
