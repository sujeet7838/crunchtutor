import 'dart:html';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
class FileuploadPage extends StatefulWidget {
  @override
  _FileuploadPageState createState() => _FileuploadPageState();
}
class _FileuploadPageState extends State<FileuploadPage> {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(
             title:Text("Select File and Upload"),
             backgroundColor: Colors.orangeAccent,
         ), //set appbar
         body:Container( 
            alignment: Alignment.center,
             padding: EdgeInsets.all(40),
             child:Column(children: <Widget>[

          

                  Container( 
                     child:RaisedButton.icon(
                       onPressed: (){
                        // selectFile();
                       },
                       icon: Icon(Icons.folder_open), 
                       label: Text("CHOOSE FILE"),
                       color: Colors.redAccent,
                       colorBrightness: Brightness.dark,
                      )
                  ),

                  // if selectedfile is null then show empty container
                  // if file is selected then show upload button
                  //selectedfile == null?
                  //Container():
                  Container( 
                     child:RaisedButton.icon(
                       onPressed: (){ 
                        // uploadFile();
                       }, 
                       icon: Icon(Icons.folder_open), 
                       label: Text("UPLOAD FILE"),
                       color: Colors.redAccent,
                       colorBrightness: Brightness.dark,
                      )
                  )
                  
             ],)
         )
      );
  }
}
  