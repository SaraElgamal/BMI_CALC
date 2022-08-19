import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
 final int result ;
final int age ;
final bool isMale;
final String s ;

 Result({ @required this.result,
   @required this.age,
   @required this.isMale , @required this.s});
@override
Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Colors.deepPurpleAccent[100],
  appBar: AppBar(
    elevation: 0.0,
    backgroundColor: Colors.deepPurpleAccent[100],
    title: Center(
      child: Text(
        'BMI Calculator',
        style: TextStyle(color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    ),
  ),
  body :
     Column(

      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            margin: EdgeInsetsDirectional.only(top: 40.0),
              padding: EdgeInsetsDirectional.only(start: 20.0, top: 30.0),
              decoration: BoxDecoration( color : Colors.deepPurple[700]  ,
                borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0),),

              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,

              height: 100.0,
              width: double.infinity,

              child: Text('GENDER :    ${isMale ? 'Male' : 'Female'}',style: TextStyle(color: Colors.white,
                  fontSize: 30.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              margin: EdgeInsetsDirectional.only(top: 20.0),
              padding: EdgeInsetsDirectional.only(start: 20.0, top: 30.0),
              decoration: BoxDecoration( color : Colors.deepPurple[700]  ,
                borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0),),

              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,

              height: 100.0,
              width: double.infinity,

              child: Text('Result  :  $result',style: TextStyle(color: Colors.white,
                  fontSize: 30.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              margin: EdgeInsetsDirectional.only(top: 20.0),
              padding: EdgeInsetsDirectional.only(start: 20.0, top: 30.0),
              decoration: BoxDecoration( color : Colors.deepPurple[700]  ,
                borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0),),

              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,

              height: 100.0,
              width: double.infinity,

              child: Text('Age  :  $age', style: TextStyle(color: Colors.white,
                  fontSize: 30.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              margin: EdgeInsetsDirectional.only(top: 20.0),
              padding: EdgeInsetsDirectional.only(start: 20.0, top: 10.0),
              decoration: BoxDecoration( color : Colors.deepPurple[700]  ,
                borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0),),

              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,

              height: 50.0,
              width: double.infinity,

              child: Text('$s',style: TextStyle(color: Colors.white,
                  fontSize: 20.0, fontWeight: FontWeight.w500),)
          ),
        ),
      ],
    ),

);
}
}
