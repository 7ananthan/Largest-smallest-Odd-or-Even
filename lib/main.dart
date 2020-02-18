import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:largest_smallest_iseven/views/home.dart';

void main() => runApp(Screen());

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Larest Smallest & Odd / Even"),
        ),
        body: Homescr()),
    );
  }
}
