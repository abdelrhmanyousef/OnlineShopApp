import 'package:ecomerceapp/Controllers/MainScreenProvider.dart';
import 'package:ecomerceapp/Feature/Presention/Views/Home/HomeView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => MainScreenProvider(),
    )
  ], child: const ecomerce()));
}

class ecomerce extends StatelessWidget {
  const ecomerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
