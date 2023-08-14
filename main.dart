import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BMI(),
  ));
}

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  @override
  final TextEditingController heightcontroller=TextEditingController();
  final TextEditingController weightcontroller=TextEditingController();
  var calculateresult;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('BMI Calculator', style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.blue),
      body: Center(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
                width: 30,
              ),
              TextField(
                controller: heightcontroller,
                  decoration: InputDecoration(
                      labelText: 'Height in cm',
                      border: OutlineInputBorder(gapPadding: 5),
                      fillColor: Colors.pinkAccent,
                      filled: true)
              ),
              SizedBox(height: 20,width: 30,),
              TextField(
                controller: weightcontroller,
                  decoration: InputDecoration(
                      labelText: 'weight in kg',
                      border: OutlineInputBorder(gapPadding: 5),
                      fillColor: Colors.pinkAccent,
                      filled: true)
              ),
              SizedBox(height: 50,width: 50,),
              ElevatedButton(onPressed: (){
                setState(() {
                  bmi();
                });
              }, child: Text('calculate',style: TextStyle(fontSize: 20)),
              ),
              SizedBox(height: 20,width: 30,),
              Text('$calculateresult'),


            ],  //children
          ),
        ),
      ),
    );
  }
  void bmi(){
    double w=double.parse(weightcontroller.text)/100;
    double h=double.parse(heightcontroller.text);
    calculateresult=w/(h*h);
  }
}
