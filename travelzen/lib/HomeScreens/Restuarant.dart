import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Restuarants extends StatefulWidget {
  const Restuarants({super.key});

  @override
  State<Restuarants> createState() => _RestuarantsState();
}

class _RestuarantsState extends State<Restuarants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}