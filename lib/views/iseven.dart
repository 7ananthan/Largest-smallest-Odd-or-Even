import 'package:flutter/material.dart';
import 'package:largest_smallest_iseven/main.dart';

class OdEv extends StatelessWidget {
  TextEditingController num = TextEditingController();
  TextEditingController result = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Smallest"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: num,
                decoration: InputDecoration(hintText: "Enter a number"),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("Find"),
                onPressed: () {
                  String getnum1 = num.text;
                  int a = int.parse(getnum1);

                  if (a % 2 == 0)
                    result.text = getnum1 + " is even";
                  else
                    result.text = getnum1 + " is odd";
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: result,
                decoration: InputDecoration(hintText: "Resultr"),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("Back to Home"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
