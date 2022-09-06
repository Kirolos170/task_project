import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/constants.dart';
import 'package:task/model/task_model.dart';
class MyContainer extends StatelessWidget {
   MyContainer({required this.mymodel}) ;
  TaskModel? mymodel;

  @override
  Widget build(BuildContext context) {
    return

    Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
    width: 50,
    height: 120,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.white


    ),


    child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
    children: [

    Image.asset("${mymodel!.urlimage}" , height: 100,width: 100,),
    Expanded(
    child:   Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

    children: [

     Padding(
    padding: const EdgeInsets.all(10.0),
    child: Text("${mymodel!.text1}" , style: text1,),
    ),
     Text("${mymodel!.text2 } " , style: text2,)
    ],
    ),
    )
    ],
    ),
    ),


    ),
    );




  }
}








