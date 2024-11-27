import 'package:flutter/material.dart';
import 'package:trads_app/Screen1.dart';

void main() {
  runApp(const Trads_app());
}

// ignore: camel_case_types
class Trads_app extends StatelessWidget {
  const Trads_app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
