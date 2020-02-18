import 'package:flutter/material.dart';
import 'package:largest_smallest_iseven/views/iseven.dart';
import 'package:largest_smallest_iseven/views/largest.dart';
import 'package:largest_smallest_iseven/views/smallest.dart';

class Homescr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Largest"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Lar()));
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text("Smallest"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sma()));
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text("Odd or Even"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OdEv()));
            },
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
