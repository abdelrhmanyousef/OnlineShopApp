import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CartPageBody extends StatefulWidget {
  const CartPageBody({super.key});

  @override
  State<CartPageBody> createState() => _CartPageBodyState();
}

class _CartPageBodyState extends State<CartPageBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
      ],
    );
  }
}
