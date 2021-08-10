 import 'package:flutter/material.dart';
import 'package:crunchtutor/widgets/drawer.dart';
// import 'package:flutter/services.dart';
// import 'dart:convert';
// import 'package:hiremike/models/catalog.dart';
 //import 'package:hiremike/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  static Color darkBluebtn = Color(0xff5d95fd);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:darkBluebtn,
        title: Text("Welcome"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to you"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
