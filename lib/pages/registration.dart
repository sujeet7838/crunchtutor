
import 'package:crunchtutor/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crunchtutor/utils/routes.dart';

class RegistartionPage extends StatefulWidget {
  @override
  _RegistartionPageState createState() => _RegistartionPageState();
}

class _RegistartionPageState extends State<RegistartionPage> {
    String radioButtonItem = 'Monthly';
    int id = 1;
     int id1 = 1;
  int monthlydollars=19;
    int yearlyydollars=199;
  String name = "";
  bool changeButton = false;
  bool isDisabled=false;
  static Color darkBlueText = Color(0xff032b49);
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context,MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                        height: 40.0,
                      ),
        
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 35.0),
               child:Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: darkBlueText,
                  ),
                ),
                ),
                  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 35.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Expanded(
                                      child: Padding(
                                      child:Text(
                                      "Are you 18 year or older",
                                      style: TextStyle(
                                        fontSize: 13,
                                      color: darkBlueText,
                                        fontWeight: FontWeight.normal
                                        
                                      ),
                                    ),
                                  padding: EdgeInsets.only(left: 5),
                                  )),
                                       Switch(
                            value: isDisabled,
                          
                            onChanged: (check) {
                              setState(() {
                                isDisabled = check;
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
                    fontSize: 11.0,
                    height: 1.0,                
                  ),
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
                        decoration: InputDecoration(
                          hintText: "Enter Create login",
                          labelText: "Create login",
                          border: OutlineInputBorder(),
                    
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Create login cannot be empty";
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
               
                      InkWell(
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                       Text("User Names", style: TextStyle(fontWeight: FontWeight.bold,color: darkBlueText),),
                      ], 
                      ),
                      ), 
                        SizedBox(
                        height: 10.0,
                      ),
               
                      Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          child: Text(
                            "Child 1",
                            style: TextStyle(fontSize: 14,color:Colors.white)
                          ),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xff3049ac)),
                            foregroundColor: MaterialStateProperty.all<Color>(Color(0xff3049ac)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(color: Color(0xff3049ac))
                              )
                            )
                          ),
                          onPressed: () => null
                        ),
                        SizedBox(width: 15),
                        ElevatedButton(
                          child: Text(
                            "Child 2",
                            style: TextStyle(fontSize: 14,color:Colors.white)
                          ),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xffd3d3d3)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(color: Color(0xffd3d3d3))
                              )
                            )
                          ),
                          onPressed: () => null
                        ), SizedBox(width: 15),
                          ElevatedButton(
                          child: Text(
                            "Child 3",
                            style: TextStyle(fontSize: 14,color:Colors.grey)
                          ),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xffd3d3d3)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(color: Color(0xffd3d3d3))
                              )
                            )
                          ),
                          onPressed: () => null
                        ), SizedBox(width: 15),
                          ElevatedButton(
                          child: Text(
                            "Child 4",
                            style: TextStyle(fontSize: 14,color:Colors.grey)
                          ),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xffd3d3d3)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(color: Color(0xffd3d3d3))
                              )
                            )
                          ),
                          onPressed: () => null
                        ), SizedBox(width: 15),
                      ]
                    ),
                     SizedBox(
                        height: 10.0,
                      ),
               
                      InkWell(
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                      Text("Grades", style: TextStyle(fontWeight: FontWeight.bold,color: darkBlueText),),
                      ], 
                      ),
                       ), 
                         SizedBox(
                        height: 10.0,
                      ),
               
                      Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      child: Text(
                        "1 to 12".toLowerCase(),
                        style: TextStyle(fontSize: 14,color:Colors.white)
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff3049ac)),
                        foregroundColor: MaterialStateProperty.all<Color>(Color(0xff3049ac)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Color(0xff3049ac))
                          )
                        )
                      ),
                      onPressed: () => null
                    ),
                    SizedBox(width: 15),
                    ElevatedButton(
                      child: Text(
                        "1 to 12".toLowerCase(),
                        style: TextStyle(fontSize: 14,color:Colors.white)
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xffd3d3d3)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Color(0xffd3d3d3))
                          )
                        )
                      ),
                      onPressed: () => null
                    ), SizedBox(width: 15),
                      ElevatedButton(
                      child: Text(
                        "1 to 12".toLowerCase(),
                        style: TextStyle(fontSize: 14,color:Colors.grey)
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xffd3d3d3)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Color(0xffd3d3d3))
                          )
                        )
                      ),
                      onPressed: () => null
                    ), SizedBox(width: 15),
                     ElevatedButton(
                      child: Text(
                        "1 to 12".toLowerCase(),
                        style: TextStyle(fontSize: 14,color:Colors.grey)
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xffd3d3d3)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Color(0xffd3d3d3))
                          )
                        )
                      ),
                      onPressed: () => null
                    ), SizedBox(width: 15),
                  ]
                ),
                      SizedBox(
                        height: 10.0,
                      ),
               
                      InkWell(
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                      Text("Subscription", style: TextStyle(fontWeight: FontWeight.bold,color: darkBlueText),),
                      ], 
                      ),
                      ), 
                      Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = 'Monthly';
                            id = 1;
                          });
                        },
                      ),
                      Text(
                        'Monthly (\$$monthlydollars)',
                        style: new TextStyle(fontSize: 15.0,color: Color(0xff254b6d)),
                      ),
          
                      Radio(
                        value: 2,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = 'Yearly';
                            id = 2;
                          });
                        },
                      ),
                      Text(
                        'Yearly (\$$yearlyydollars)',
                          style: new TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff254b6d)
                              ),
                            ),
                          ],
                        ),
                      InkWell(
                child: Row(
                children: <Widget>[
                  Text("Credit Card Information", 
                  style: TextStyle(fontWeight: FontWeight.normal,fontSize: 11),),
                  Text("(will be directly recorded into",
                  style: TextStyle(color: Color(0xff2f4aad),fontSize: 11),),
                ],),),
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                child:Text("the globally accepted Heartland Payment Portal)",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.normal,
                color: Color(0xff2f4aad),),),),
                   
                    SizedBox(
                        height: 10.0,
                      ),
                         TextFormField(
                            style: TextStyle(
                            fontSize: 11.0,
                           height: 1.0,                
                           ),
                        decoration: InputDecoration(
                          hintText: "Enter card number",
                          labelText: "Card Number",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "card number cannot be empty";
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
                        decoration: InputDecoration(
                          hintText: "Enter mailing address",
                          labelText: "Mailing Address",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "mailing address cannot be empty";
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
                        decoration: InputDecoration(
                          hintText: "Enter expiration date",
                          labelText: "Expiration Date ",
                          border: OutlineInputBorder(),
                         suffixIcon: Icon(
                        Icons.date_range,
                        ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "expiration date cannot be empty";
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
                        decoration: InputDecoration(
                          hintText: "Enter cvv",
                          labelText: "CVV",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "cvv cannot be empty";
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
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                      child:Text("I understand that the information I provide must be complete and accurate to the best of my knowladge.I realize that falsification and/or incomplete information may jeopardize my signin now or in the future. Do you wish to continue?)",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff033259),),),),

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
                            radioButtonItem = 'Yes';
                            id1 = 1;
                          });
                        },
                      ),
                      Text(
                        'Yes',
                        style: new TextStyle(fontSize: 15.0,color: Color(0xff254b6d)),
                      ),
          
                      Radio(
                        value: 2,
                        groupValue: id1,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = 'No';
                            id1 = 2;
                          });
                        },
                      ),
                      Text(
                        'No',
                          style: new TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff254b6d)
                              ),
                            ),
                          ],
                        ),
            
                      SizedBox(
                      height: 40.0,
                      ),
                      Material(
                        color: MyTheme.darkBluebtn,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
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
                  Text("Already have an account ? ", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Login",style: TextStyle(color: Color(0xff3049ac),fontWeight: FontWeight.bold),),
                ], 
              ),
              onTap: (){
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
}