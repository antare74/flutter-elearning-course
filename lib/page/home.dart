import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn_ui_course/util/assets.dart';
import 'package:learn_ui_course/model/course.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          background(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  header(),
                  search(),
                  // GridView.builder is a builder for GridView widget
                  GridView.builder(
                    // itemCount is a number of items in the grid
                    itemCount: 2,
                    // shrinkWrap is a flag that indicates whether the contents of the grid should be allowed to shrink
                    shrinkWrap: true,
                    // physics is a physics object that can be used to control how the scroll view should react to user input
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.all(16),
                    // scrollDirection: Axis.horizontal,
                    // gridDelegate is a delegate that controls the layout of the grid
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      // childAspectRatio is for the width of the item
                      childAspectRatio: 0.7,
                      // crossAxisCount is for the number of items in a row
                      crossAxisCount: 2,
                      // mainAxisSpacing is for the space between items
                      crossAxisSpacing: 8,
                      // mainAxisSpacing is for the space between rows
                      mainAxisSpacing: 8,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue,
                        ),
                        child: Image.asset(
                          Assets.imageBackend,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget background() {
  return Container(
    height: 300,
    decoration: BoxDecoration(
      color: Colors.indigo[900],
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
      ),
    ),
  );
}

Widget header() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                ),
              ),
              Text(
                'Antareja',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            Assets.imageAvatar,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );
}

Widget search() {
  return Container(
    margin: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.indigo[900],
              ),
              isDense: true,
              contentPadding: EdgeInsets.all(0),
            ),
            textAlignVertical: TextAlignVertical.center,
          ),
        ),
        Container(
          width: 1,
          height: 30,
          color: Colors.indigo[900],
        ),
        IconButton(
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.indigo[900],
            size: 30,
          ),
          onPressed: () {},
        ),
      ],
    ),
  );
}
