import 'package:flutter/material.dart';
import 'package:crunchtutor/utils/routes.dart';
class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  bool _passwordVisible = false;
  static Color darkBluebtn = Color(0xff3049ac);
  static Color darkBlueText = Color(0xff032b49);
  // String _password;
    // Toggles the password show status
  // void _togglePasswordStatus() {
  //   setState(() {
  //     _obscureText = !_obscureText;
  //   });
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
                  height: 55.0,
                ),
                
                Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.cover, 
                ),
              
      
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 35.0),
               child: Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                     color: Color(0xff0c3053),
                   ),
                 ),
                ),
                
                   Padding(
                padding: const EdgeInsets.symmetric(vertical: 00.0, horizontal: 35.0),
               child:  Text(
                  "Enter your credentials to continue",
                  style: TextStyle(
                    fontSize: 13,
                    color: darkBlueText
                  ),
                ),
                ),
                 
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter user name",
                          labelText: "User name",
                          border: OutlineInputBorder(),
                      suffixIcon: Icon(
                      Icons.check,
                    ),
                      
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "User name cannot be empty";
                          }else if (value.length < 6) {
                            return "User name length should be atleast 6";
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
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                            border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  // use _setState that belong to StatefulBuilder
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
                      
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }

                          return null;
                        },
                      ), 
                      SizedBox(
                        height: 20.0,
                      ),
                      Material(
                        color: darkBluebtn,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 250,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                
                          ),
                        ),
                      ),
                    SizedBox(
                      height: 20,
                    ),
                      InkWell(
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                       
                       Text("Forgot password?",style: TextStyle(color:darkBluebtn, backgroundColor: Colors.white,)),
                      ], 
                     ),
                    onTap: (){
                      //Navigator.pushNamed(context, '/forgot_page');
                      Navigator.pushNamed(context, '/forgot');
                    },
                  ), 
                      
                    SizedBox(
                    height: 110,
                  ),
                  
              InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Dnon't have an account ? ",style: TextStyle(color: darkBlueText, backgroundColor: Colors.white,),),
                  Text("Sign Up",style: TextStyle(color: darkBluebtn, backgroundColor: Colors.white,),),
                ], 
              ),
              onTap: (){
                Navigator.pushNamed(context, '/registration');
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