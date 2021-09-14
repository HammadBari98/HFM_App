import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hfm_app/screens/home_screen.dart';
import 'package:hfm_app/screens/register_screen.dart';

class Login_Screen extends StatefulWidget {
  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          'assets/imgs/loginBG.jpg',
          fit: BoxFit.cover,
        ),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 120,
              ),
              Image.asset(
                "assets/imgs/logo.png",
                fit: BoxFit.cover,
                height: 70.0,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 250,
                child: TextField(
                    autocorrect: false,
                    autofocus: false,
                    style: TextStyle(
                        fontSize: 18.0, height: 2.0, color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: "Email or Mobile Number",
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0),
                    )),
              ),
              Container(
                width: 250,
                child: TextField(
                    autofocus: false,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: TextStyle(
                        fontSize: 18.0, height: 2.0, color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: "Password",
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0),
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home_Screen()));
                  },
                  child: Text("LOGIN",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xff0096be),
                      )),
                  minWidth: 250.0,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.blue, width: 2),
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
                    TextSpan(text: "Don't have Account?"),
                    TextSpan(
                      text: ' Register now',
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register_Screen()));
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
