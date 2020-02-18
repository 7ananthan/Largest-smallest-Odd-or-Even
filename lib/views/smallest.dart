import 'package:flutter/material.dart';
import 'package:largest_smallest_iseven/main.dart';

class Sma extends StatelessWidget {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  TextEditingController num3 = TextEditingController();
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
                controller: num1,
                decoration: InputDecoration(hintText: "Enter a number"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: num2,
                decoration: InputDecoration(hintText: "Enter a number"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: num3,
                decoration: InputDecoration(hintText: "Enter a number"),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("Find"),
                onPressed: () {
                  String getnum1=num1.text;
                  String getnum2=num2.text;
                  String getnum3=num3.text;
                  int a= int.parse(getnum1);
                  int b= int.parse(getnum2);
                  int c= int.parse(getnum3);

                  if ((a<b) && (a<c))
                    result.text=getnum1 +" is smallest";
                  else if ((b<a)&&(b<c))
                    result.text=getnum2 +" is smallest";
                  else
                    result.text=getnum3  +" is smallest";
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Screen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
