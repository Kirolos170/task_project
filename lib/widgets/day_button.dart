import 'package:flutter/material.dart';
class DayButton extends  StatelessWidget {

DayButton({required this.daynymber , required this.character , required this.is_selected , required this.ontap});
  int? daynymber;
  String? character;
  bool? is_selected;
  VoidCallback? ontap;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        ontap ;

      },

      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: is_selected!? Colors.blue : Colors.white ,
border: Border.all(color: is_selected!? Colors.blue : Colors.white),




        ),

child: Column(
  children: [

Spacer(flex: 5,),
      Text("${fixedDayNumber}",style:
        TextStyle(


          color: is_selected! ? Colors.white : Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w900,
        )

        ,),
      Spacer(flex: 5,),
        Text(
          '$character',
          style: TextStyle(
            color: is_selected! ? Colors.white : Colors.black,
          ),
        ),
      Spacer(flex: 5,)


  ],


),



      ),
    );
  }
String get fixedDayNumber => daynymber! < 10 ? '0$daynymber' : '$daynymber';
}
