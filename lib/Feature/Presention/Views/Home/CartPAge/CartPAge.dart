import 'package:ecomerceapp/Core/Utils/AppStyel.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/CartPAge/CartPageWidget/CartPageBody.dart';
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
      body: CartPageBody(),
    );
  }
}
