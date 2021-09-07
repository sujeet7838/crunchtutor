import 'dart:convert';
import 'package:crunchtutor/widgets/themes.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crunchtutor/utils/routes.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

class RegistartionPage extends StatefulWidget {
  @override
  _RegistartionPageState createState() => _RegistartionPageState();
}

class _RegistartionPageState extends State<RegistartionPage> {
  //File _file;
  bool vGrade1 = false;
  bool vGrade2 = false;
  bool vGrade3 = false;
  bool vGrade4 = false;
  bool vGrade5 = false;
  bool vGrade6 = false;
  bool vGrade7 = false;
  bool vGrade8 = false;
  bool vGrade9 = false;
  bool vGrade10 = false;
  bool vGrade11 = false;
  bool vGrade12 = false;
  var grade;
  final List<String> _categoryValues = [
    "Physics",
    "Life Sciences",
    "Sociology",
    "Psychology",
    "Political Science",
    "Geography",
    "Anthropology",
    "Economics",
    "Visual arts",
    "Philosophy",
    "Literature",
    "Physical Education",
    "History",
    "English",
    "Chemstry",
    "Mathematics",
  ];
  //add button function
  List<dynamicWidget> dynamicList = [];
  // List<String> Price = [];
  List<String> Product = [];
  addDynamic() {
    if (Product.length != 0) {
      Product = [];
      // Price = [];
      dynamicList = [];
    }
    setState(() {});
    if (dynamicList.length >= 5) {
      return;
    }
    dynamicList.add(new dynamicWidget());
  }

  //file picker method
  var filePath;
  Future getPdfAndUpload() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'doc', 'png', 'docx'],
    );
    if (result != null) {
      PlatformFile file = result.files.first;
      print(file.name);
      // print(file.bytes);
      //print(file.size);
      print(file.extension);
      //print(file.path);
      filePath = file.path;
      print(this.filePath);
      //String fileName = result.files.first.name;

      // Map data = {
      //   'experience_file': this.filePath,
      // };

      FormData formdata = FormData.fromMap({
        "experience_file": await MultipartFile.fromFile(filePath.path,
            filename: basename(filePath.path)
            //show only filename from path
            ),
      });

      var jsonResponse = null;
      var response = await http.post(
          Uri.parse('https://crunchtutor.com/api/upload-files'),
          body: formdata);
      jsonResponse = json.decode(response.body);
      print(jsonResponse);
    } else {
      // User canceled the picker

    }
  }
//   Future<String?> getPdfAndUpload1(file) async {
//  var url ='https://crunchtutor.com/api/upload-files';
//   var request = http.MultipartRequest('POST', Uri.parse(url));
//   request.files.add(await http.MultipartFile.fromPath('picture', file.path));
//   var res = await request.send();
//   return res.reasonPhrase;

// }
  // uploaddata() async {
  //   print("hghgjgh..."+this.filePath);
  //    Map data = {
  //       'experience_file': this.filePath,
  //     };
  //   var jsonResponse = null;
  //   var response = await http
  //       .post(Uri.parse('https://crunchtutor.com/api/upload-files'), body: data);
  //   jsonResponse = json.decode(response.body);
  //   print("responce>>>>"+jsonResponse);
  //     if (response.statusCode == 200) {
  //       setState(() {
  //         showToastMessage("User was successfully Upload!");
  //       });
  //       setState(() {
  //       });
  //     } else if (response.statusCode == 203) {
  //       setState(() {

  //         showToastMessage("Incorrect Email Id OR Password.");
  //       });
  //     }
  // }

//end add button function
  var adultplus;
  var authWorkUS;
  int techExpYes = 1;
  var techExp;
  int collegeProf = 1;
  int schoolTech = 1;
  int comptProf = 1;
  int collegeStudent = 1;
  int id = 1, id1 = 1;
  bool changeButton = false;
  bool isaduld = true;
  bool isauth = true;
  bool valuefirst = true;
  String name = '';
  static Color darkBlueText = Color(0xff032b49);
  final _formKey = GlobalKey<FormState>();
  var condition;
  bool _isChecked = true;
  List<String> text = [
    "By proceeding, I agree to Crunch Tutor's Terms of Use and acknowledge that I have read the Privacy Notice.",
    "Bt proceeding, I am also consenting to recive calls or SMS messages, including by automatic dialer,from Crunch Tutor and its affiliates to the number I provide.",
    // "By proceeding,I am also agreeing to recive marketing communications(including by automatic dialer) by SMS from Crunch Tutor at the  phone number provided. These messages may promote Crunch Tutor's products and services.I understand that consent to reciving these marketing messages is not required to use Crunch Tuto's service."
  ];
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController lnameController = new TextEditingController();
  final TextEditingController usernameController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confpswdController = new TextEditingController();
  final TextEditingController phoneController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController staddressController = new TextEditingController();
  final TextEditingController stateController = new TextEditingController();
  final TextEditingController zipcodeController = new TextEditingController();
  final TextEditingController collegeProfURL = new TextEditingController();
  final TextEditingController schoolTeacherURL = new TextEditingController();
  final TextEditingController expiredateController =
      new TextEditingController();
  final TextEditingController cvvController = new TextEditingController();

  //Api integraion method
  moveToHome(
      BuildContext context,
      String name,
      String lname,
      String username,
      String pass,
      String confpaswd,
      String phone,
      String email,
      String staddress,
      String state,
      String zip,
      String collegeProfURL,
      String schoolTeacherURL,
      String expiredate,
      String cvv) async {
    // print(name);
    // print(expiredate);
    // print("adultplus" + adultplus);
    //    if (isaduld == null) {
    //   this.adultplus = "1";
    // } else {
    //   this.adultplus = adultplus;
    // }
    // if (isauth == null) {
    //   this.authWorkUS = "1";
    // } else {
    //   this.authWorkUS = authWorkUS;
    // }
    //this.adultplus
    //this.authWorkUS
    Map data = {
      'plus_18': 1,
      'work_in_us': 1,
      'firstname': name,
      'lastname': lname,
      'username': username,
      'password': pass,
      'phone': phone,
      'email': email,
      'street_address': staddress,
      'state': state,
      'zipcode': zip,
      'experience': "1",
      'teacher': "1",
      'teacher_url': collegeProfURL,
      'professor': "1",
      'professor_url': schoolTeacherURL,
      'student': "1",
      'computer': "1",
      'reg_from': "1",
      'device_id': 'ytr455756',
      'expertise':
          '[{"category": "1", "grades": ["3", "1", "4"]},{"category": "3","grades": ["4", "5", "6"]}]',
      'experience_file': '',
      'teacher_file': '',
      'professor_file': '',
      'student_file': '',
      'transcript_file': '',
      'computer_file': '',
      'highest_degree_file': '',
      'criminal_file': ''
    };
    if (_formKey.currentState!.validate()) {
      var jsonResponse = null;
      var response = await http.post(
          Uri.parse('https://crunchtutor.com/api/tutor-sign-up'),
          body: data);
      jsonResponse = json.decode(response.body);
      print(response);
      print(response.statusCode);
      if (response.statusCode == 200) {
        setState(() {
          changeButton = true;
          showToastMessage(
              "Your registration succefully done.Please active your account by Email.");
        });
        await Future.delayed(Duration(seconds: 2));
        await Navigator.pushNamed(context, MyRoutes.loginRoute);

        setState(() {
          changeButton = false;
        });
      } else if (response.statusCode == 203) {
        setState(() {
          changeButton = false;
          showToastMessage("Sorry! Account already exists.");
        });
      } else if (response.statusCode == 400) {
        setState(() {
          changeButton = false;
          showToastMessage("Error! Input data is missing");
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget result = new Card();

    Widget dynamicTextField = new ListView.builder(
      itemCount: dynamicList.length,
      itemBuilder: (_, index) => dynamicList[index],
    );
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 35.0),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: darkBlueText,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 35.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Expanded(
                          child: Padding(
                        child: Text(
                          "Are you 18 year or older",
                          style: TextStyle(
                              fontSize: 13,
                              color: darkBlueText,
                              fontWeight: FontWeight.normal),
                        ),
                        padding: EdgeInsets.only(left: 5),
                      )),
                      Switch(
                          value: isaduld,
                          onChanged: (checkAdult) {
                            //print(check);
                            setState(() {
                              isaduld = checkAdult;
                              if (isaduld == true) {
                                // print(isaduld);
                                this.adultplus = "1";
                              } else {
                                this.adultplus = "2";
                                //print(isaduld);
                              }
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 35.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Expanded(
                          child: Padding(
                        child: Text(
                          "Are you authorized to work in the US",
                          style: TextStyle(
                              fontSize: 13,
                              color: darkBlueText,
                              fontWeight: FontWeight.normal),
                        ),
                        padding: EdgeInsets.only(left: 5),
                      )),
                      Switch(
                          value: isauth,
                          onChanged: (checkAuth) {
                            setState(() {
                              isauth = checkAuth;
                              print(isauth);
                              if (isauth == true) {
                                this.authWorkUS = "1";
                              } else {
                                this.authWorkUS = "2";
                              }
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        style: TextStyle(
                          fontSize: 13.0,
                          height: 1.0,
                        ),
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: "Enter First name",
                          labelText: "First name",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "name cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: TextStyle(
                          fontSize: 11.0,
                          height: 1.0,
                        ),
                        controller: lnameController,
                        decoration: InputDecoration(
                          hintText: "Enter Last name",
                          labelText: "Last name",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Last name cannot be empty";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: TextStyle(
                          fontSize: 11.0,
                          height: 1.0,
                        ),
                        controller: usernameController,
                        decoration: InputDecoration(
                          hintText: "Enter User Name",
                          labelText: "User name",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "user name cannot be empty";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: TextStyle(
                          fontSize: 11.0,
                          height: 1.0,
                        ),
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: TextStyle(
                          fontSize: 11.0,
                          height: 1.0,
                        ),
                        obscureText: true,
                        controller: confpswdController,
                        decoration: InputDecoration(
                          hintText: "Enter confirm password",
                          labelText: "Confirm Password",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Confirm Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Confirm Password length should be atleast 6";
                          }

                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: TextStyle(
                          fontSize: 11.0,
                          height: 1.0,
                        ),
                        controller: phoneController,
                        decoration: InputDecoration(
                          hintText: "Enter phone",
                          labelText: "Phone",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Phone cannot be empty";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: TextStyle(
                          fontSize: 11.0,
                          height: 1.0,
                        ),
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Enter email",
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email cannot be empty";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: TextStyle(
                          fontSize: 11.0,
                          height: 1.0,
                        ),
                        controller: staddressController,
                        decoration: InputDecoration(
                          hintText: "Enter Streat Address",
                          labelText: "Streat Address",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Streat Address cannot be empty";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: TextStyle(
                          fontSize: 11.0,
                          height: 1.0,
                        ),
                        controller: stateController,
                        decoration: InputDecoration(
                          hintText: "Enter State",
                          labelText: "State",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "State cannot be empty";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: TextStyle(
                          fontSize: 11.0,
                          height: 1.0,
                        ),
                        controller: zipcodeController,
                        decoration: InputDecoration(
                          hintText: "Enter Zip code",
                          labelText: "Zip code",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Zip code cannot be empty";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 0.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Expanded(
                                child: Padding(
                              child: Text(
                                "Online Teching Experience",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: darkBlueText,
                                    fontWeight: FontWeight.bold),
                              ),
                              padding: EdgeInsets.only(left: 0),
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Radio(
                                  value: 1,
                                  groupValue: techExpYes,
                                  onChanged: (val) {
                                    setState(() {
                                      //rbTechingExp = 'Yes';
                                      techExpYes = 1;
                                      this.techExp = val;
                                      print(val);
                                    });
                                  },
                                ),
                                Text(
                                  'Yes',
                                  style: new TextStyle(
                                      fontSize: 15.0, color: Color(0xff254b6d)),
                                ),
                                Radio(
                                  value: 2,
                                  groupValue: techExpYes,
                                  onChanged: (val) {
                                    setState(() {
                                      print(val);
                                      // rbTechingExp = 'No';
                                      techExpYes = 2;
                                      this.techExp = val;
                                    });
                                  },
                                ),
                                Text(
                                  'No',
                                  style: new TextStyle(
                                      fontSize: 15.0, color: Color(0xff254b6d)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.grey)),
                              onPrimary: Colors.grey,
                              primary: Color(0xffe8effd),
                              minimumSize: Size(350, 50),
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                            icon: Icon(
                              Icons.save_alt,
                              color: Colors.grey,
                            ),
                            label: Text(
                                'Upload documents to support \n online teching experience'),
                            onPressed: () {
                              print('teching experience');
                              // _uploadFile(_file);
                              getPdfAndUpload();
                            },
                          )),
                      SizedBox(
                        height: 10.0,
                      ),

                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Background verified (Requried)",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: darkBlueText),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.grey)),
                              onPrimary: Colors.grey,
                              primary: Color(0xffe8effd),
                              minimumSize: Size(350, 50),
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                            icon: Icon(
                              Icons.save_alt,
                              color: Colors.grey,
                            ),
                            label: Text(
                                'Get your background checked at checkr.com \n and then upload your background certificate'),
                            onPressed: () {
                              print('teching experience');
                              // uploaddata();
                              getPdfAndUpload();
                            },
                          )),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 0.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Expanded(
                                child: Padding(
                              child: Text(
                                "College Professor",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: darkBlueText,
                                    fontWeight: FontWeight.bold),
                              ),
                              padding: EdgeInsets.only(left: 0),
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Radio(
                                  value: 1,
                                  groupValue: collegeProf,
                                  onChanged: (val) {
                                    setState(() {
                                      collegeProf = 1;
                                    });
                                  },
                                ),
                                Text(
                                  'Yes',
                                  style: new TextStyle(
                                      fontSize: 15.0, color: Color(0xff254b6d)),
                                ),
                                Radio(
                                  value: 2,
                                  groupValue: collegeProf,
                                  onChanged: (val) {
                                    setState(() {
                                      collegeProf = 2;
                                    });
                                  },
                                ),
                                Text(
                                  'No',
                                  style: new TextStyle(
                                      fontSize: 15.0, color: Color(0xff254b6d)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.grey)),
                              onPrimary: Colors.grey,
                              primary: Color(0xffe8effd),
                              minimumSize: Size(350, 50),
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                            icon: Icon(
                              Icons.save_alt,
                              color: Colors.grey,
                            ),
                            label: Text('Upload an Image of current ID Card'),
                            onPressed: () {
                              print('ID Card');
                              getPdfAndUpload();
                            },
                          )),

                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0),
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            minLines: 1,
                            maxLines: 5,
                            textAlignVertical: TextAlignVertical.top,
                            style:
                                TextStyle(fontSize: 11.0, color: Colors.black),
                            autocorrect: true,
                            controller: schoolTeacherURL,
                            decoration: InputDecoration(
                              hintText:
                                  'Please provide the URL of your personal page at your colleges website.It should have face & name',
                              hintStyle: TextStyle(color: Colors.grey),
                              // filled: true,
                              hintMaxLines: 2,
                              fillColor: Colors.white70,
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 10.0,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 0.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Expanded(
                                child: Padding(
                              child: Text(
                                "School Teacher",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: darkBlueText,
                                    fontWeight: FontWeight.bold),
                              ),
                              padding: EdgeInsets.only(left: 0),
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Radio(
                                  value: 1,
                                  groupValue: schoolTech,
                                  onChanged: (val) {
                                    setState(() {
                                      schoolTech = 1;
                                    });
                                  },
                                ),
                                Text(
                                  'Yes',
                                  style: new TextStyle(
                                      fontSize: 15.0, color: Color(0xff254b6d)),
                                ),
                                Radio(
                                  value: 2,
                                  groupValue: schoolTech,
                                  onChanged: (val) {
                                    setState(() {
                                      schoolTech = 2;
                                    });
                                  },
                                ),
                                Text(
                                  'No',
                                  style: new TextStyle(
                                      fontSize: 15.0, color: Color(0xff254b6d)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0),
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            minLines: 1,
                            maxLines: 5,
                            textAlignVertical: TextAlignVertical.top,
                            style:
                                TextStyle(fontSize: 11.0, color: Colors.black),
                            autocorrect: true,
                            controller: collegeProfURL,
                            decoration: InputDecoration(
                              hintText:
                                  'Please provide the URL of your personal page at your colleges website.It should have face & name',
                              hintStyle: TextStyle(color: Colors.grey),
                              // filled: true,
                              hintMaxLines: 2,
                              fillColor: Colors.white70,
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.grey)),
                              onPrimary: Colors.grey,
                              primary: Color(0xffe8effd),
                              minimumSize: Size(350, 50),
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                            icon: Icon(
                              Icons.save_alt,
                              color: Colors.grey,
                            ),
                            label: Text('Upload an Image of current ID Card'),
                            onPressed: () {
                              print('current ID card');
                              getPdfAndUpload();
                            },
                          )),
                      SizedBox(
                        height: 10.0,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 0.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Expanded(
                                child: Padding(
                              child: Text(
                                "Computer Profectionl",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: darkBlueText,
                                    fontWeight: FontWeight.bold),
                              ),
                              padding: EdgeInsets.only(left: 0),
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Radio(
                                  value: 1,
                                  groupValue: comptProf,
                                  onChanged: (val) {
                                    setState(() {
                                      comptProf = 1;
                                    });
                                  },
                                ),
                                Text(
                                  'Yes',
                                  style: new TextStyle(
                                      fontSize: 15.0, color: Color(0xff254b6d)),
                                ),
                                Radio(
                                  value: 2,
                                  groupValue: comptProf,
                                  onChanged: (val) {
                                    setState(() {
                                      comptProf = 2;
                                    });
                                  },
                                ),
                                Text(
                                  'No',
                                  style: new TextStyle(
                                      fontSize: 15.0, color: Color(0xff254b6d)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.grey)),
                              onPrimary: Colors.grey,
                              primary: Color(0xffe8effd),
                              minimumSize: Size(350, 50),
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                            icon: Icon(
                              Icons.save_alt,
                              color: Colors.grey,
                            ),
                            label: Text('Upload an Image of current ID Card'),
                            onPressed: () {
                              print('current ID card');
                              getPdfAndUpload();
                            },
                          )),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.grey)),
                              onPrimary: Colors.grey,
                              primary: Color(0xffe8effd),
                              minimumSize: Size(350, 50),
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                            icon: Icon(
                              Icons.save_alt,
                              color: Colors.grey,
                            ),
                            label: Text(
                                'Upload a copy of the certificate of \n your highest educationl degree'),
                            onPressed: () {
                              print('current ID card');
                              getPdfAndUpload();
                            },
                          )),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 0.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Expanded(
                                child: Padding(
                              child: Text(
                                "College Student",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: darkBlueText,
                                    fontWeight: FontWeight.bold),
                              ),
                              padding: EdgeInsets.only(left: 0),
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Radio(
                                  value: 1,
                                  groupValue: collegeStudent,
                                  onChanged: (val) {
                                    setState(() {
                                      collegeStudent = 1;
                                    });
                                  },
                                ),
                                Text(
                                  'Yes',
                                  style: new TextStyle(
                                      fontSize: 15.0, color: Color(0xff254b6d)),
                                ),
                                Radio(
                                  value: 2,
                                  groupValue: collegeStudent,
                                  onChanged: (val) {
                                    setState(() {
                                      collegeStudent = 2;
                                    });
                                  },
                                ),
                                Text(
                                  'No',
                                  style: new TextStyle(
                                      fontSize: 15.0, color: Color(0xff254b6d)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.grey)),
                              onPrimary: Colors.grey,
                              primary: Color(0xffe8effd),
                              minimumSize: Size(350, 50),
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                            icon: Icon(
                              Icons.save_alt,
                              color: Colors.grey,
                            ),
                            label: Text('Upload an Image of current ID Card'),
                            onPressed: () {
                              print('current ID card');
                              getPdfAndUpload();
                            },
                          )),
                      SizedBox(
                        height: 10.0,
                      ),

                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.grey)),
                              onPrimary: Colors.grey,
                              primary: Color(0xffe8effd),
                              minimumSize: Size(350, 50),
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                            icon: Icon(
                              Icons.save_alt,
                              color: Colors.grey,
                            ),
                            label: Text('Upload Transcripts'),
                            onPressed: () {
                              print('current ID card');
                              getPdfAndUpload();
                            },
                          )),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 0.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Subject I can Tutor (K-12 Student)",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: darkBlueText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    80 /
                                    100,
                                height: 50,
                                padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
                                child: InputDecorator(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      hint: Text("Category"),
                                      value: this.grade,
                                      isDense: true,
                                      isExpanded: true,
                                      items: _categoryValues
                                          .map((value) => DropdownMenuItem(
                                                child: Text(value),
                                                value: value,
                                              ))
                                          .toList(),
                                      onChanged: (val) {
                                        setState(() {
                                          this.grade = val;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Column(
                                children: <Widget>[
                                  //first row grade
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Checkbox(
                                        value: this.vGrade1,
                                        onChanged: (value) {
                                          setState(() {
                                            this.vGrade1 = value!;
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              new Radius.circular(5)),
                                        ),
                                      ),
                                      Text(
                                        'Grade 1',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Color(0xff053157)),
                                      ),
                                      Checkbox(
                                        value: this.vGrade2,
                                        onChanged: (value) {
                                          setState(() {
                                            this.vGrade2 = value!;
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      Text(
                                        'Grade 2',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Color(0xff053157)),
                                      ),
                                      Checkbox(
                                        value: this.vGrade3,
                                        onChanged: (value) {
                                          setState(() {
                                            this.vGrade3 = value!;
                                            print(this.vGrade3);
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      Text(
                                        'Grade 3',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Color(0xff053157)),
                                      ),
                                    ],
                                  ),
                                  //Second Row grade
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Checkbox(
                                        value: this.vGrade4,
                                        onChanged: (value) {
                                          setState(() {
                                            this.vGrade4 = value!;
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      Text(
                                        'Grade 4',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Color(0xff053157)),
                                      ),
                                      Checkbox(
                                        value: this.vGrade5,
                                        onChanged: (value) {
                                          setState(() {
                                            this.vGrade5 = value!;
                                            print(this.vGrade5);
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      Text(
                                        'Grade 5',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Color(0xff053157)),
                                      ),
                                      Checkbox(
                                        value: this.vGrade6,
                                        onChanged: (value) {
                                          setState(() {
                                            this.vGrade6 = value!;
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      Text(
                                        'Grade 6',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Color(0xff053157)),
                                      ),
                                    ],
                                  ),
                                  //Third Row grade
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Checkbox(
                                        value: this.vGrade7,
                                        onChanged: (value) {
                                          setState(() {
                                            this.vGrade7 = value!;
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      Text(
                                        'Grade 7',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Color(0xff053157)),
                                      ),
                                      Checkbox(
                                        value: this.vGrade8,
                                        onChanged: (value) {
                                          setState(() {
                                            this.vGrade8 = value!;
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      Text(
                                        'Grade 8',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Color(0xff053157)),
                                      ),
                                      Checkbox(
                                        value: this.vGrade9,
                                        onChanged: (value) {
                                          setState(() {
                                            this.vGrade9 = value!;
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      Text(
                                        'Grade 9',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Color(0xff053157)),
                                      ),
                                    ],
                                  ),
                                  //Four Row grade
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Checkbox(
                                        value: this.vGrade10,
                                        onChanged: (value) {
                                          setState(() {
                                            this.vGrade10 = value!;
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      Text(
                                        'Grade 10',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Color(0xff053157)),
                                      ),
                                      Checkbox(
                                        value: this.vGrade11,
                                        onChanged: (value) {
                                          setState(() {
                                            this.vGrade11 = value!;
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      Text(
                                        'Grade 11',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Color(0xff053157)),
                                      ),
                                      Checkbox(
                                        value: this.vGrade12,
                                        onChanged: (value) {
                                          setState(() {
                                            this.vGrade12 = value!;
                                          });
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      Text(
                                        'Grade 12',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Color(0xff053157)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )),

                      // add subject dynamic list
                      SizedBox(
                        child: Product.length == 0 ? dynamicTextField : result,
                        height: MediaQuery.of(context).size.height * 10 / 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RaisedButton.icon(
                          onPressed: addDynamic,
                          // onPressed: () {
                          //   print('Add Child');
                          // },
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          label: Text(
                            'Add A Subject',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          splashColor: Colors.red,
                          color: Color(0xff2f4aad),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 0.0),
                        child: Text(
                          "I understand that the information I provide must be complete and accurate to the best of my knowladge.I realize that falsification and/or incomplete information may jeopardize my signin now or in the future. Do you wish to continue?)",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff033259),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: id1,
                            onChanged: (val) {
                              setState(() {
                                id1 = 1;
                              });
                            },
                          ),
                          Text(
                            'Yes',
                            style: new TextStyle(
                                fontSize: 15.0, color: Color(0xff254b6d)),
                          ),
                          Radio(
                            value: 2,
                            groupValue: id1,
                            onChanged: (val) {
                              setState(() {
                                id1 = 2;
                              });
                            },
                          ),
                          Text(
                            'No',
                            style: new TextStyle(
                                fontSize: 15.0, color: Color(0xff254b6d)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 0.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              child: Column(
                                children: text
                                    .map((t) => CheckboxListTile(
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          title: Text(t,
                                              style: TextStyle(
                                                fontSize: 11.0,
                                                color: Color(0xff0c3053),
                                              )),
                                          value: _isChecked,
                                          onChanged: (val) {
                                            setState(() {
                                              _isChecked = val!;
                                            });
                                          },
                                        ))
                                    .toList(),
                              ),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Material(
                        color: MyTheme.darkBluebtn,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          //onTap: () => moveToHome(context),
                          onTap: () => moveToHome(
                              context,
                              nameController.text,
                              lnameController.text,
                              usernameController.text,
                              passwordController.text,
                              confpswdController.text,
                              phoneController.text,
                              emailController.text,
                              staddressController.text,
                              stateController.text,
                              zipcodeController.text,
                              collegeProfURL.text,
                              schoolTeacherURL.text,
                              expiredateController.text,
                              cvvController.text),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 40 : 350,
                            height: 40,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Already have an account ? ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Login",
                              style: TextStyle(
                                  color: Color(0xff3049ac),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void showToastMessage(String message) {
    Fluttertoast.showToast(
        msg: message, //message to show toast
        toastLength: Toast.LENGTH_LONG, //duration for message to show
        gravity: ToastGravity.BOTTOM, //where you want to show, top, bottom
        timeInSecForIosWeb: 1, //for iOS only
        backgroundColor: Colors.blue, //background Color for message
        textColor: Colors.white, //message text color
        fontSize: 16.0 //message font size
        );
  }
}

class dynamicWidget extends StatefulWidget {
  @override
  _dynamicWidgetState createState() => _dynamicWidgetState();
}

class _dynamicWidgetState extends State<dynamicWidget> {
  var grade;

  final List<String> _categoryValues = [
    "Physics",
    "Life Sciences",
    "Sociology",
    "Psychology",
    "Political Science",
    "Geography",
    "Anthropology",
    "Economics",
    "Visual arts",
    "Philosophy",
    "Literature",
    "Physical Education",
    "History",
    "English",
    "Chemstry",
    "Mathematics",
  ];

  bool vGrade1 = false;
  bool vGrade2 = false;
  bool vGrade3 = false;
  bool vGrade4 = false;
  bool vGrade5 = false;
  bool vGrade6 = false;
  bool vGrade7 = false;
  bool vGrade8 = false;
  bool vGrade9 = false;
  bool vGrade10 = false;
  bool vGrade11 = false;
  bool vGrade12 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListBody(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 80 / 100,
                    height: 50,
                    padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
                    child: InputDecorator(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        contentPadding: EdgeInsets.all(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Text("Category"),
                          value: this.grade,
                          isDense: true,
                          isExpanded: true,
                          items: _categoryValues
                              .map((value) => DropdownMenuItem(
                                    child: Text(value),
                                    value: value,
                                  ))
                              .toList(),
                          onChanged: (val) {
                            setState(() {
                              this.grade = val;
                              print(this.grade);
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    children: <Widget>[
                      //first row grade
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Checkbox(
                            value: this.vGrade1,
                            onChanged: (value) {
                              setState(() {
                                this.vGrade1 = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(new Radius.circular(5)),
                            ),
                          ),
                          Text(
                            'Grade 1',
                            style: TextStyle(
                                fontSize: 13.0, color: Color(0xff053157)),
                          ),
                          Checkbox(
                            value: this.vGrade2,
                            onChanged: (value) {
                              setState(() {
                                this.vGrade2 = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Text(
                            'Grade 2',
                            style: TextStyle(
                                fontSize: 13.0, color: Color(0xff053157)),
                          ),
                          Checkbox(
                            value: this.vGrade3,
                            onChanged: (value) {
                              setState(() {
                                this.vGrade3 = value!;
                                print(this.vGrade3);
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Text(
                            'Grade 3',
                            style: TextStyle(
                                fontSize: 13.0, color: Color(0xff053157)),
                          ),
                        ],
                      ),
                      //Second Row grade
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Checkbox(
                            value: this.vGrade4,
                            onChanged: (value) {
                              setState(() {
                                this.vGrade4 = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Text(
                            'Grade 4',
                            style: TextStyle(
                                fontSize: 13.0, color: Color(0xff053157)),
                          ),
                          Checkbox(
                            value: this.vGrade5,
                            onChanged: (value) {
                              setState(() {
                                this.vGrade5 = value!;
                                print(this.vGrade5);
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Text(
                            'Grade 5',
                            style: TextStyle(
                                fontSize: 13.0, color: Color(0xff053157)),
                          ),
                          Checkbox(
                            value: this.vGrade6,
                            onChanged: (value) {
                              setState(() {
                                this.vGrade6 = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Text(
                            'Grade 6',
                            style: TextStyle(
                                fontSize: 13.0, color: Color(0xff053157)),
                          ),
                        ],
                      ),
                      //Third Row grade
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Checkbox(
                            value: this.vGrade7,
                            onChanged: (value) {
                              setState(() {
                                this.vGrade7 = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Text(
                            'Grade 7',
                            style: TextStyle(
                                fontSize: 13.0, color: Color(0xff053157)),
                          ),
                          Checkbox(
                            value: this.vGrade8,
                            onChanged: (value) {
                              setState(() {
                                this.vGrade8 = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Text(
                            'Grade 8',
                            style: TextStyle(
                                fontSize: 13.0, color: Color(0xff053157)),
                          ),
                          Checkbox(
                            value: this.vGrade9,
                            onChanged: (value) {
                              setState(() {
                                this.vGrade9 = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Text(
                            'Grade 9',
                            style: TextStyle(
                                fontSize: 13.0, color: Color(0xff053157)),
                          ),
                        ],
                      ),
                      //Four Row grade
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Checkbox(
                            value: this.vGrade10,
                            onChanged: (value) {
                              setState(() {
                                this.vGrade10 = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Text(
                            'Grade 10',
                            style: TextStyle(
                                fontSize: 13.0, color: Color(0xff053157)),
                          ),
                          Checkbox(
                            value: this.vGrade11,
                            onChanged: (value) {
                              setState(() {
                                this.vGrade11 = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Text(
                            'Grade 11',
                            style: TextStyle(
                                fontSize: 13.0, color: Color(0xff053157)),
                          ),
                          Checkbox(
                            value: this.vGrade12,
                            onChanged: (value) {
                              setState(() {
                                this.vGrade12 = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Text(
                            'Grade 12',
                            style: TextStyle(
                                fontSize: 13.0, color: Color(0xff053157)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
