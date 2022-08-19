

import 'dart:math';
import 'dart:ui';

import 'package:bmi_calc/Result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI extends StatefulWidget {

  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  bool isMale = true;
  double height = 120.0;
  int weight = 40;
  int age = 20 ;
String s = 'again';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepPurple[900],
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.white,
              fontSize: 20.0,),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: GestureDetectors(
                        onTap: (){
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(

                          decoration: BoxDecoration( color: isMale ? Colors.deepPurpleAccent : Colors.deepPurpleAccent[100] ,
                            borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0),),

                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,

                          child: Column(

                            children: [
                              SizedBox(height: 20.0,),
                              Image(
                                image: AssetImage('images/malepng.png'),
                                height: 95.0,
                                width: 95.0,
                                color: Colors.white,


                              ),
                              SizedBox(height: 10.0,),
                              Text('MALE',
                                style: TextStyle(color: Colors.white,
                                    fontSize: 20.0),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 20.0),
                      child:  GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration( color:   isMale ? Colors.deepPurpleAccent[100] : Colors.deepPurpleAccent,
                            borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0),),

                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,

                          child: Column(
                            children: [
                              SizedBox(height: 20.0,),
                              Image(
                                image: AssetImage('images/femalePng.png'),
                                height: 95.0,
                                width: 95.0,
                                color: Colors.white,

                              ),
                              SizedBox(height: 10.0,),
                              Text('FEMALE',
                                style: TextStyle(color: Colors.white,
                                    fontSize: 20.0),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Expanded(
            child: Container(

              child: Row(

                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20.0),
                      child: Container(

                        decoration: BoxDecoration( color: Colors.deepPurpleAccent[100],
                          borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0),),

                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(

                          children: [
                            SizedBox(height: 10.0,),
                            Text('HEIGHT',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 20.0),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,

                              children: [

                                Text('${height.round()}',
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 60.0,
                                      fontWeight: FontWeight.bold),),
                                Text('cm',
                                  style: TextStyle(color: Colors.grey[200],
                                      fontSize: 20.0),),
                              ],
                            ),
                            Slider(
                              activeColor: Colors.deepPurpleAccent,
                              value: height,
                              max: 220.0,
                              min: 80.0,

                              onChanged: (value) {
                                setState(() {
                                  height = value;
                                });

                              },
                            ),
                          ],
                        ),

                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: Container(

                        decoration: BoxDecoration( color: Colors.deepPurpleAccent[100],
                          borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0),),

                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,

                        child: Column(

                          children: [
                            SizedBox(height: 10.0,),
                            Text('WEIGHT',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 20.0),),
                            Text('$weight',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.deepPurpleAccent,
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,

                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.deepPurpleAccent,
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.add,

                                  ),
                                ),
                              ],
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 20.0),
                      child: Container(
                        decoration: BoxDecoration( color: Colors.deepPurpleAccent[100],
                          borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0),),

                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,

                        child: Column(
                          children: [
                            SizedBox(height: 10.0,),
                            Text('AGE',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 20.0),),
                            Text('$age',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.deepPurpleAccent,
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,

                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.deepPurpleAccent,
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  
                                  mini: true,
                                  child: Icon(
                                    Icons.add,

                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            padding: EdgeInsetsDirectional.only(start: 10.0,
                end: 16.0),
            height: 60.0,
            width: double.infinity,
            child:
            MaterialButton(onPressed: (){
              double result = weight / pow(height/ 100, 2)  ;
              if (result < 18.5 ){
               s = 'you are under weight ! ';
              }
              else if (result >= 18 && result < 25) {
                s = 'you are healthy ! ';
              }  else if (result >= 25 && result < 30) {
                s = 'you are overweight ! ';
              } else s = 'you are Obese';

              print(result.round());
              Navigator.push(context, MaterialPageRoute(
                  builder:
                  (context) => Result(
                 
                    result: result.round(), isMale: isMale, age : age
                , s: s,  ),
              )
              );
            } ,
              color: Colors.deepPurpleAccent,
              child: Text('CALCULATE',
                style: TextStyle(color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      ),
    );
  }
}
