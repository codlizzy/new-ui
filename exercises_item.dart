import 'package:flutter/material.dart';

class iteam {
  IconData icon;
  String name;
  String bouttonname;
  final Color;

  iteam(
     {
       required this.Color,
    required this.icon,
    required this.name,
    required this.bouttonname,
  });
}

List<iteam> iteamlist = [
  iteam(
    icon: Icons.favorite,
    name: 'Speaking Skillz',
    bouttonname: '16 Exercises', Color: Colors.amber,
  ),
  iteam(
    icon: Icons.person,
    name: 'Reading Skills',
    bouttonname: '8 Exercises', Color: Colors.blue,
  ),
  iteam(
    icon: Icons.star,
    name: 'Writing Skills',
    bouttonname: '20 Exercises', Color: Colors.teal,
  ),
  iteam(
    icon: Icons.favorite,
    name: 'Speaking Skillz',
    bouttonname: '16 Exercises', Color: Colors.red,
  ),
   iteam(
    icon: Icons.star,
    name: 'Writing Skills',
    bouttonname: '20 Exercises', Color: Colors.indigo,
  ),
    iteam(
    icon: Icons.person,
    name: 'Reading Skills',
    bouttonname: '8 Exercises', Color: Colors.purple,
  ),
  
];
