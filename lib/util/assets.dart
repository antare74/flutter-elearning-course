import 'package:flutter/material.dart';
import 'package:learn_ui_course/model/course.dart';

class Assets {
  static final imageAvatar = 'assets/avatar.png';
  static final imageBackend = 'assets/backend.jpg';
  static final imageFrontend = 'assets/frontend.jpg';

  static final menuCourse = [
    {
      'title': 'Backend',
      'image': 'assets/backend.jpg',
      'modul': 4,
    },
    {
      'title': 'Frontend',
      'image': 'assets/frontend.jpg',
      'modul': 8,
    }
  ];

  static final profesors = [
    Course(
      color: Color.fromARGB(255, 130, 221, 233),
      duration: '8 Hour 2 Min',
      image: 'assets/logo_flutter.png',
      modul: 17,
      name: 'Flutter',
      type: ['Frontend'],
    ),
    Course(
      color: Color.fromARGB(255, 168, 216, 169),
      duration: '8 Hour 2 Min',
      image: 'assets/logo_androidstudio.png',
      modul: 17,
      name: 'Android Studio',
      type: ['Frontend'],
    ),
    Course(
      color: Color.fromARGB(255, 144, 202, 249),
      duration: '8 Hour 2 Min',
      image: 'assets/logo_dart.png',
      modul: 17,
      name: 'Dart',
      type: ['Frontend'],
    ),
    Course(
      color: Color.fromARGB(255, 239, 154, 154),
      duration: '8 Hour 2 Min',
      image: 'assets/logo_java.png',
      modul: 17,
      name: 'Java',
      type: ['Frontend', 'Backend'],
    ),
    Course(
      color: Color.fromARGB(255, 255, 204, 128),
      duration: '8 Hour 2 Min',
      image: 'assets/logo_kotlin.png',
      modul: 17,
      name: 'Kotlin',
      type: ['Frontend', 'Backend'],
    ),
    Course(
      color: Color.fromARGB(255, 159, 168, 218),
      duration: '8 Hour 2 Min',
      image: 'assets/logo_php.png',
      modul: 17,
      name: 'Php',
      type: ['Backend'],
    ),
  ];
}
