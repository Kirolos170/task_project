import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String getWeekOfDaysFirstLettersByIndex(int index) {
  switch (index) {
    case 0:
      return 'M';
    case 1:
      return 'T';
    case 2:
      return 'W';
    case 3:
      return 'T';
    case 4:
      return 'F';
    case 5:
      return 'S';
    case 6:
      return 'S';
    default:
      return '';
  }
}



TextStyle text1 = TextStyle(fontSize: 30 , color: Colors.black , fontWeight: FontWeight.w500);
TextStyle text2 = TextStyle(fontSize: 15 , color: Colors.blueAccent , fontWeight: FontWeight.w200);



