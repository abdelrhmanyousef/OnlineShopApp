// ignore_for_file: prefer_const_constructors

import 'package:ecomerceapp/Core/Utils/AppStyel.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "SearchPage",
          style: Styels.text25,
        ),
      ),
    );
  }
}
