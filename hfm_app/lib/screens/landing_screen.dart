import 'package:flutter/material.dart';
import 'package:hfm_app/screens/login_screen.dart';
import 'package:hfm_app/screens/register_screen.dart';

import 'mobile_num_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          'assets/imgs/landingBG-new.jpg',
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/imgs/logo.png",
              fit: BoxFit.cover,
              height: 70.0,
            ),
            SizedBox(
              height: 50,
            ),
            Stack(
              children: <Widget>[
                SingleChildScrollView(
                  child: Container(
                    height: 200.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color(0xff0096be),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100.0),
                        topRight: Radius.circular(0.0),
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(50.0),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 30.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login_Screen()));
                            },
                            child: Text("LOGIN",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xff0096be),
                                )),
                            minWidth: 200.0,
                            splashColor: Colors.white,
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
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register_Screen()));
                          },
                          child: Text("CREATE NEW ACCOUNT",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0xff0096be),
                              )),
                          minWidth: 200.0,
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(
                            vertical: 12.0,
                          ),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.blue, width: 2),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        )
      ],
    ));
  }
}
