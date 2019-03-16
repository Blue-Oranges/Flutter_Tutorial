import 'package:flutter/material.dart';
import 'dart:math';
const Color lightGrey =Color(0x55D4CACB);
const List<Color> listOfColors = [
  Colors.redAccent,
  Colors.orangeAccent,
  Colors.deepOrangeAccent,
  Colors.purpleAccent,
  Colors.blueAccent,
  Colors.greenAccent,
  Colors.pinkAccent,
  Colors.indigoAccent,
  Colors.cyanAccent,
  Colors.lightBlue,
  Colors.lightGreen,
];  
Color getRandomColor() => listOfColors[Random().nextInt(listOfColors.length)];