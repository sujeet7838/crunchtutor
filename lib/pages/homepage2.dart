import 'package:crunchtutor/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  var api = "https://crunchtutor.com/api/question-listing/49";
  var res, question;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {
    res = await http.get(Uri.parse(api));
    question = jsonDecode(res.body)["data"];
    print(question.toString());
   final length = question.length;
   print(length);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
      body: Center(child: CustomFilePicker()),
      drawer: MyDrawer(),
    );
  }
}

class CustomFilePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomFilePicker();
  }
}

class _CustomFilePicker extends State<CustomFilePicker> {
  //id
  var ctID1 = 'CTS088';
  var ctID2 = 'CTS030';
  var ctID3 = 'CTS022';
  var ctID4 = 'CTS022';
  var ctID5 = 'CTS010';
  var ctID6 = 'CTS09';
  var ctID7 = 'CTS08';
  var ctID8 = 'CTS07';
  var ctID9 = 'CTS06';
  var ctID10 = 'CTS05';
  var ctID11 = 'CTS04';
  var ctID12 = 'CTS03';
  var ctID13 = 'CTS02';
  var ctID14 = 'CTS01';
  //name
  var ctIDName1 = 'Vinod';
//subject
  var ctIDsubject1 = 'English';
  var ctIDsubject2 = 'Physical Education';
  var ctIDsubject3 = 'Mathematics';
  var ctIDsubject4 = 'Mathematics';
  var ctIDsubject5 = 'History';
  var ctIDsubject6 = 'History';
  var ctIDsubject7 = 'History';
  var ctIDsubject8 = 'History';
  var ctIDsubject9 = 'History';
  var ctIDsubject10 = 'History';
  var ctIDsubject11 = 'History';
  var ctIDsubject12 = 'History';
  var ctIDsubject13 = 'Mathematics';
  //class
  var ctClass1 = 'Class 1';
  var ctClass2 = 'Class 3';
  var ctClass3 = 'Class 1';
  var ctClass4 = 'Class 1';
  var ctClass5 = 'Class 1';
  var ctClass6 = 'Class 1';
  var ctClass7 = 'Class 1';
  var ctClass8 = 'Class 1';
  var ctClass9 = 'Class 1';
  var ctClass10 = 'Class 1';
  var ctClass11 = 'Class 1';
  var ctClass12 = 'Class 1';
  var ctClass13 = 'Class 1';
//session_datetime
  var sessiondatetime1 = '2021-09-30';
  var sessiondatetime2 = '2021-09-01';
  var sessiondatetime3 = '2021-09-22';
  var sessiondatetime4 = '2021-09-22';
  var sessiondatetime5 = '2021-09-10';
  var sessiondatetime6 = '2021-09-10';
  var sessiondatetime7 = '"2021-09-10';
  var sessiondatetime8 = '2021-09-10';
  var sessiondatetime9 = '2021-09-10';
  var sessiondatetime10 = '2021-09-10';
  var sessiondatetime11 = '2021-09-10';
  var sessiondatetime12 = '2021-09-10';
  var sessiondatetime13 = '2021-08-29';
  //session_time
  var sessiontime1 = '20:47';
  var sessiontime2 = '7:30"';
  var sessiontime3 = '15:35';
  var sessiontime4 = '15:35';
  var sessiontime5 = '11:00';
  var sessiontime6 = '11:00';
  var sessiontime7 = '11:00';
  var sessiontime8 = '11:00';
  var sessiontime9 = '10:00';
  var sessiontime10 = '10:00';
  var sessiontime11 = '10:00';
  var sessiontime12 = '10:00';
  var sessionime13 = '00:00';
  //problem
  var description1 = 'Big Problem';
  var description2 = 'fhhjj';
  var description3 = 'Testing';
  var description4 = 'Testing';
  var description5 = 'Describe the problem (Optional)';
  var description6 = 'Describe the problem (Optional)';
  var description7 = 'Describe the problem (Optional)';
  var description8 = 'Describe the problem (Optional)';
  var description9 = 'TestDescribe the problem (Optional)';
  var description10 = 'TestDescribe the problem (Optional)';
  var description11 = 'TestDescribe the problem (Optional)';
  var description12 = 'TestDescribe the problem (Optional)';
  var description13 = 'Testing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Card(
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
                                  "V",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  "$ctIDName1",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Color(0xff0c3053)),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctID1",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctIDsubject1",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Ink(
                                  child: Image.asset(
                                    "assets/images/instructor.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctClass1",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                          ],
                        ),
                      ),
                      //third row
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiondatetime1",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiontime1",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/world_clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "EST",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
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
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Problem Descripation:",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$description1",
                                  style: TextStyle(
                                      fontSize: 9.0, color: Color(0xff0c3053)),
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
          Card(
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
                                  "V",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  "$ctIDName1",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Color(0xff0c3053)),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctID2",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctIDsubject2",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Ink(
                                  child: Image.asset(
                                    "assets/images/instructor.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctClass2",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                          ],
                        ),
                      ),
                      //third row
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiondatetime2",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiontime2",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/world_clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "EST",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
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
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Problem Descripation:",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                 "$description2",
                                  style: TextStyle(
                                      fontSize: 9.0, color: Color(0xff0c3053)),
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
          Card(
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
                                  "V",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  "$ctIDName1",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Color(0xff0c3053)),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctID3",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctIDsubject3",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Ink(
                                  child: Image.asset(
                                    "assets/images/instructor.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctClass3",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                          ],
                        ),
                      ),
                      //third row
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiondatetime3",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiontime3",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/world_clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "EST",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
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
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Problem Descripation:",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                   "$description3",
                                  style: TextStyle(
                                      fontSize: 9.0, color: Color(0xff0c3053)),
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
          Card(
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
                                  "V",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  "$ctIDName1",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Color(0xff0c3053)),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctID4",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctIDsubject4",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Ink(
                                  child: Image.asset(
                                    "assets/images/instructor.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctClass4",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                          ],
                        ),
                      ),
                      //third row
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiondatetime4",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiontime4",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/world_clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "EST",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
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
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Problem Descripation:",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$description4",
                                  style: TextStyle(
                                      fontSize: 9.0, color: Color(0xff0c3053)),
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
          Card(
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
                                  "V",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  "$ctIDName1",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Color(0xff0c3053)),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctID5",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctIDsubject5",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Ink(
                                  child: Image.asset(
                                    "assets/images/instructor.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctClass5",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                          ],
                        ),
                      ),
                      //third row
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiondatetime5",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiontime5",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/world_clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "EST",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
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
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Problem Descripation:",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                 "$description5",
                                  style: TextStyle(
                                      fontSize: 9.0, color: Color(0xff0c3053)),
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
          Card(
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
                                  "V",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  "$ctIDName1",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Color(0xff0c3053)),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctID6",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctIDsubject6",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Ink(
                                  child: Image.asset(
                                    "assets/images/instructor.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctClass6",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                          ],
                        ),
                      ),
                      //third row
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiondatetime6",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiontime6",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/world_clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "EST",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
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
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Problem Descripation:",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                 "$description6",
                                  style: TextStyle(
                                      fontSize: 9.0, color: Color(0xff0c3053)),
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
          Card(
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
                                  "V",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  "$ctIDName1",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Color(0xff0c3053)),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctID7",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctIDsubject7",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Ink(
                                  child: Image.asset(
                                    "assets/images/instructor.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctClass7",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                          ],
                        ),
                      ),
                      //third row
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiondatetime7",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiontime7",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/world_clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "EST",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
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
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Problem Descripation:",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                               "$description7",
                                  style: TextStyle(
                                      fontSize: 9.0, color: Color(0xff0c3053)),
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
          Card(
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
                                  "V",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  "$ctIDName1",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Color(0xff0c3053)),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctID8",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctIDsubject8",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Ink(
                                  child: Image.asset(
                                    "assets/images/instructor.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctClass8",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                          ],
                        ),
                      ),
                      //third row
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiondatetime8",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiontime8",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/world_clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "EST",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
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
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Problem Descripation:",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$description8",
                                  style: TextStyle(
                                      fontSize: 9.0, color: Color(0xff0c3053)),
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
          Card(
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
                                  "V",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  "$ctIDName1",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Color(0xff0c3053)),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctID9",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctIDsubject9",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Ink(
                                  child: Image.asset(
                                    "assets/images/instructor.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctClass9",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                          ],
                        ),
                      ),
                      //third row
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiondatetime9",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiontime9",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/world_clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "EST",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
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
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Problem Descripation:",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$description9",
                                  style: TextStyle(
                                      fontSize: 9.0, color: Color(0xff0c3053)),
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
          //ten crad
          Card(
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
                                  "V",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  "$ctIDName1",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Color(0xff0c3053)),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctID10",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctIDsubject10",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Ink(
                                  child: Image.asset(
                                    "assets/images/instructor.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctClass10",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                          ],
                        ),
                      ),
                      //third row
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiondatetime10",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiontime10",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/world_clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "EST",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
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
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Problem Descripation:",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                   "$description10",
                                  style: TextStyle(
                                      fontSize: 9.0, color: Color(0xff0c3053)),
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
          //11 card
          Card(
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
                                  "V",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  "$ctIDName1",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Color(0xff0c3053)),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctID11",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctIDsubject11",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Ink(
                                  child: Image.asset(
                                    "assets/images/instructor.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctClass11",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                          ],
                        ),
                      ),
                      //third row
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiondatetime11",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiontime11",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/world_clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "EST",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
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
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Problem Descripation:",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                 "$description11",
                                  style: TextStyle(
                                      fontSize: 9.0, color: Color(0xff0c3053)),
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
          //12 card
          Card(
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
                                  "V",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  "$ctIDName1",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Color(0xff0c3053)),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctID12",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctIDsubject12",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Ink(
                                  child: Image.asset(
                                    "assets/images/instructor.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctClass12",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                          ],
                        ),
                      ),
                      //third row
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiondatetime12",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiontime12",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/world_clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "EST",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
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
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Problem Descripation:",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                 "$description12",
                                  style: TextStyle(
                                      fontSize: 9.0, color: Color(0xff0c3053)),
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
          // 13 card
          Card(
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
                                  "V",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  "$ctIDName1",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Color(0xff0c3053)),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctID13",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctIDsubject13",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Ink(
                                  child: Image.asset(
                                    "assets/images/instructor.png",
                                    height: 15,
                                    width: 15,
                                  ),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$ctClass13",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                          ],
                        ),
                      ),
                      //third row
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessiondatetime13",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "$sessionime13",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Ink(
                                child: Image.asset(
                                  "assets/images/world_clock.png",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "EST",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
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
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Problem Descripation:",
                                  style: TextStyle(
                                      fontSize: 11.0, color: Color(0xff0c3053)),
                                )),
                            Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                 "$description13",
                                  style: TextStyle(
                                      fontSize: 9.0, color: Color(0xff0c3053)),
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
        ],
      ),
    ));
  }
}
