import 'package:ecomerceapp/Core/Utils/AppStyel.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "CartPage",
          style: Styels.text25,
        ),
      ),
    );
  }
}
