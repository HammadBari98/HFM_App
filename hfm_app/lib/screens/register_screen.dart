import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hfm_app/screens/home_screen.dart';
import 'package:hfm_app/screens/login_screen.dart';
import 'package:hfm_app/screens/mobile_num_screen.dart';
import 'package:hfm_app/screens/register_screen.dart';

class Register_Screen extends StatefulWidget {
  @override
  _Register_ScreenState createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          'assets/imgs/registerBG.jpg',
          fit: BoxFit.cover,
        ),
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 120,
              ),
              // Image.asset(
              //   "assets/imgs/logo.png",
              //   fit: BoxFit.cover,
              //   height: 50.0,
              // ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      autocorrect: false,
                      autofocus: false,
                      style: TextStyle(
                          fontSize: 18.0, height: 2.0, color: Colors.black),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.5),
                        ),
                        prefixIcon: Icon(Icons.person),
                        labelText: "Enter Name",
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                      )),
                ),
              ),
              Container(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      autocorrect: false,
                      autofocus: false,
                      style: TextStyle(
                          fontSize: 18.0, height: 2.0, color: Colors.black),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.5),
                        ),
                        prefixIcon: Icon(Icons.mail),
                        labelText: "Enter Email",
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                      )),
                ),
              ),
              Container(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      autocorrect: false,
                      autofocus: false,
                      style: TextStyle(
                          fontSize: 18.0, height: 2.0, color: Colors.black),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.5),
                        ),
                        prefixIcon: Icon(Icons.phone),
                        labelText: "Enter Mobile Number",
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                      )),
                ),
              ),
              Container(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      autofocus: false,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      style: TextStyle(
                          fontSize: 18.0, height: 2.0, color: Colors.black),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.5),
                        ),
                        prefixIcon: Icon(Icons.security),
                        labelText: "Password",
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                      )),
                ),
              ),
              Container(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      autofocus: false,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      style: TextStyle(
                          fontSize: 18.0, height: 2.0, color: Colors.black),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.5),
                        ),
                        prefixIcon: Icon(Icons.repeat),
                        labelText: "Confirm Password",
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Mobile_Num_Screen()));
                  },
                  child: Text("REGISTER",
                      style: TextStyle(fontSize: 16.0, color: Colors.white)),
                  minWidth: 278.0,
                  color: Color(0xff0096be),
                  padding: EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.blue, width: 0.5),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  child: RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                  children: <TextSpan>[
                    TextSpan(text: "Already have an Account?"),
                    TextSpan(
                      text: ' Login here',
                      style: TextStyle(color: Colors.blue.shade500),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Login_Screen()));
                        },
                    ),
                  ],
                ),
              ))
            ],
          ),
        )
      ],
    ));
  }
}
