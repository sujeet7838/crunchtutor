//import 'package:crunchtutor/widgets/drawer.dart';
import 'package:crunchtutor/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    late SharedPreferences sharedPreferences;
  //var api = "https://crunchtutor.com/api/question-listing/49";
  var res, drinks;
  var userId;

  @override
  void initState() {
    super.initState();
    fetchData();
    // getCredential();
  }
  //       getCredential() async {
  //   sharedPreferences = await SharedPreferences.getInstance();
  //   setState(() {
  //         // emailController.text = sharedPreferences.getString("username")!;
  //         // passwordController.text = sharedPreferences.getString("password")!;
  //      print(sharedPreferences.getString("UserData"));
  //      var UserData1= sharedPreferences.getString("UserData");
  //      var userName= jsonDecode(UserData1!)["data"];
  //      userId=userName["id"];
  //      print(userId);
  //         String s = userId;
  //        int i = int.parse(s);
  //          print(i);
  //      // fetchData();
  //     //  print(userName);
  //     //  print(userName["id"]);

  //   });
  // }

  fetchData() async {
     sharedPreferences = await SharedPreferences.getInstance();
      print(sharedPreferences.getString("UserData"));
       var UserData1= sharedPreferences.getString("UserData");
       var userName= jsonDecode(UserData1!)["data"];
       var userId=userName["id"];
       //var userDatid='8';
        print(userId);
      var apiurl = 'https://crunchtutor.com/api/question-listing/${userId}';
       print(apiurl);
      //     String s = userId;
      //    int i = int.parse(s);
      //      print(i);
    //print("object????"+userId);
   // String idata =int.parse('8') as String;
  
    res = await http.get(Uri.parse(apiurl));
    drinks = jsonDecode(res.body)["data"];
   // print(drinks.length);
    // print(drinks.toString());
    //print({drinks["subject_name"]});
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    //  var stringList =  DateTime.now().toIso8601String().split(new RegExp(r"[T\.]"));
    // var formatedDate = "${stringList[0]} ${stringList[1]}";
    // print(formatedDate);
    // print(new DateTime.now().toIso8601String().substring(0, 10));
    return Scaffold(
      backgroundColor: Color(0xfff4f7ff),
      appBar: AppBar(
        backgroundColor: Color(0xfff4f7ff),
        //title: Text("Welcome"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notification_add,
              color: Color(0xff0c3053),
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.account_circle_sharp,
              color: Color(0xff0c3053),
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      // body: Center(child: SwipeList()),
      body: Center(
        child: res != null
            ? ListView.builder(
                itemCount: drinks.length,
                itemBuilder: (context, index) {
                  var drink = drinks[index];
                  //DateTime now = DateTime.now();
                 // print(drink["firstname"].substring(0,1));
                      
             return Container(
                    child: Card(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.width * 45 / 100,
                        child: Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 20.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: <Widget>[
                                      Ink(
                                        height: 35,
                                        width: 35,
                                        decoration: const ShapeDecoration(
                                          color: Color(0xffec675b),
                                          shape: CircleBorder(),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            "${drink["firstname"].substring(0,1)}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xffFFFFFF)),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 50.0),
                                          child: Text(
                                            "${drink["firstname"]}",
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Color(0xff0c3053)),
                                          )),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Ink(
                                              height: 35,
                                              //width: 30,
                                              decoration: const ShapeDecoration(
                                                color: Color(0xff3f5df8),
                                                shape: CircleBorder(),
                                              ),
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.save_alt,
                                                ),
                                                iconSize: 20,
                                                color: Colors.white,
                                                onPressed: () {},
                                              )),
                                          Ink(
                                              height: 35,
                                              //width: 30,
                                              decoration: const ShapeDecoration(
                                                color: Colors.green,
                                                shape: CircleBorder(),
                                              ),
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.done,
                                                ),
                                                iconSize: 20,
                                                color: Colors.white,
                                                onPressed: () {},
                                              )),
                                          Ink(
                                              height: 35,
                                              //width: 30,
                                              decoration: const ShapeDecoration(
                                                color: Colors.red,
                                                shape: CircleBorder(),
                                              ),
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.close,
                                                ),
                                                iconSize: 20,
                                                color: Colors.white,
                                                onPressed: () {},
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                //second row
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Ink(
                                          // height: 35,
                                          //width: 30,
                                          child: Image.asset(
                                            "assets/images/id.png",
                                            height: 15,
                                            width: 15,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 0.0),
                                          child: Text(
                                            "CTS0${drink["id"]}",
                                            style: TextStyle(
                                                fontSize: 11.0,
                                                color: Color(0xff0c3053)),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Ink(
                                          // height: 35,
                                          //width: 30,
                                          child: Image.asset(
                                            "assets/images/book.png",
                                            height: 15,
                                            width: 15,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 0.0),
                                          child: Text(
                                            "${drink["subject_name"]}",
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                color: Color(0xff0c3053)),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Ink(
                                            child: Image.asset(
                                              "assets/images/instructor.png",
                                              height: 15,
                                              width: 15,
                                            ),
                                          )),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 0.0),
                                          child: Text(
                                            "${drink["grade_name"]}",
                                            style: TextStyle(
                                                fontSize: 11.0,
                                                color: Color(0xff0c3053)),
                                          )),
                                    ],
                                  ),
                                ),
                                //third row
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Ink(
                                          // height: 35,
                                          //width: 30,
                                          child: Image.asset(
                                            "assets/images/calendar.png",
                                            height: 15,
                                            width: 15,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 0.0),
                                          child: Text(
                                            "${drink["session_datetime"].substring(0, 10)}",
                                            style: TextStyle(
                                                fontSize: 11.0,
                                                color: Color(0xff0c3053)),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Ink(
                                          child: Image.asset(
                                            "assets/images/clock.png",
                                            height: 15,
                                            width: 15,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 0.0),
                                          child: Text(
                                            "${drink["session_datetime"].substring(11, 16)}",
                                            style: TextStyle(
                                                fontSize: 11.0,
                                                color: Color(0xff0c3053)),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Ink(
                                          child: Image.asset(
                                            "assets/images/world_clock.png",
                                            height: 15,
                                            width: 15,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 0.0),
                                          child: Text(
                                            "EST",
                                            style: TextStyle(
                                                fontSize: 11.0,
                                                color: Color(0xff0c3053)),
                                          )),
                                    ],
                                  ),
                                ),
                                //four Row
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Text(
                                            "Problem Descripation:",
                                            style: TextStyle(
                                                fontSize: 9.0,
                                                color: Color(0xff0c3053)),
                                          )),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Text(
                                            "${drink["description"] ?? ''}",
                                            style: TextStyle(
                                                fontSize: 9.0,
                                                color: Color(0xff0c3053)),
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                              ]),
                        ),
                      ),
                    ),
                  );
                },
              )
            : CircularProgressIndicator(backgroundColor: Colors.white),
      ),

      drawer: MyDrawer(),
    );
  }
}
