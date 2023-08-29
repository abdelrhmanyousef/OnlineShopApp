import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    super.key,
    this.ontap,
    this.icon,
  });
  final void Function()? ontap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
        height: 50,
        width: 50,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
