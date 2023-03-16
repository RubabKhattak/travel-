import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MapOnly extends StatefulWidget {
  const MapOnly({super.key});

  @override
  State<MapOnly> createState() => _MapOnlyState();
}

class _MapOnlyState extends State<MapOnly> {
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

