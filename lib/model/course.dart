import 'package:flutter/material.dart';

class Course {
  List<String> type;
  String name;
  String image;
  String duration;
  int modul;
  Color color;

  Course({
    required this.color,
    required this.duration,
    required this.image,
    required this.modul,
    required this.name,
    required this.type,
  });
}
