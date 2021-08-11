 import 'package:crunchtutor/widgets/drawer.dart';
import 'package:flutter/material.dart';

// import 'package:flutter/services.dart';
// import 'dart:convert';
// import 'package:hiremike/models/catalog.dart';
 //import 'package:hiremike/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  static Color darkBluebtn = Color(0xfff4f7ff);
 //int _ratingController;
 // #b3def2
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor:darkBluebtn,
//         title: Text("Welcome"),
//       ),
//       body: Center(
//         child: Container(
//           child: Text("Welcome to you"), 
//         ),
//       ),
//       drawer: MyDrawer(),
//     );
//   }
// }
@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor:darkBluebtn,
        title: Text("Welcome"),
      ),
      body: Column(
        children: <Widget>[
          DropdownButtonFormField<int>(
           // value: _ratingController,
            items: [1, 2, 3, 4, 5]
                .map((label) => DropdownMenuItem(
              child: Text(label.toString()),
              value: label,
            ))
                .toList(),
            hint: Text('Main Subject'),
            onChanged: (value) {
              // setState(() {
              //   _ratingController = value;
              // });
            },
          ),
            DropdownButtonFormField<int>(
           // value: _ratingController,
            items: [1, 2, 3, 4, 5]
                .map((label) => DropdownMenuItem(
              child: Text(label.toString()),
              value: label,
            ))
                .toList(),
            hint: Text('Secondary Subject'),
            onChanged: (value) {
              // setState(() {
              //   _ratingController = value;
              // });
            },
          ),
             DropdownButtonFormField<int>(
           // value: _ratingController,
            items: [1, 2, 3, 4, 5]
                .map((label) => DropdownMenuItem(
              child: Text(label.toString()),
              value: label,
            ))
                .toList(),
            hint: Text('Grade'),
            onChanged: (value) {
              // setState(() {
              //   _ratingController = value;
              // });
            },
          ),
          SizedBox(
                  height: 20.0,
                ),
           TextField(
            //controller: _eateryController,
            autofocus: true,
            
            decoration:
            InputDecoration(labelText: '10-06-2021', hintText: 'Date',
             border: OutlineInputBorder(),),
          ),
          SizedBox(
                  height: 20.0,
                ),
          TextField(
            //controller: _supplierController,
            decoration: InputDecoration(
                labelText: '05:45', hintText: 'Time', border: OutlineInputBorder(),),
          ),
          SizedBox(
                  height: 20.0,
                ),
          TextField(
            //controller: _descriptionController,
            decoration: InputDecoration(
                labelText: 'Describe the problem (optional)', hintText: '', border: OutlineInputBorder(),),
          ),
             SizedBox(
                  height: 20.0,
                ),
           Image.asset(
                  "assets/images/btn1.png",
                  fit: BoxFit.cover, 
                ),
                 SizedBox(
                  height: 10.0,
                ),
           Image.asset(
                  "assets/images/btn2.png",
                  fit: BoxFit.cover, 
                ),
                SizedBox(
                  height: 20.0,
                ),
        ElevatedButton(
              child: Text("Find Me a Tutor"),
               style: ElevatedButton.styleFrom(
                 onPrimary: Colors.white,
                  primary: Color(0xff3049ac),
                 minimumSize: Size(250,50),                 
               ),
               onPressed:() {
              },
            )
        ],
      ),
      drawer: MyDrawer(),
      // action: <Widget>[
      //   FlatButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: Text('Save'),
      //   ),
      //   FlatButton(
      //     onPressed: () => Navigator.pop(context),
      //     child: Text('Cancel'),
      //   )
      // ],
    );
  }
}
