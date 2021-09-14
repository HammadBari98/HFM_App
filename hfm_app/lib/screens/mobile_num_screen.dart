import 'package:flutter/material.dart';
import 'package:hfm_app/screens/home_screen.dart';

class Mobile_Num_Screen extends StatefulWidget {
  const Mobile_Num_Screen({Key? key}) : super(key: key);

  @override
  _Mobile_Num_ScreenState createState() => _Mobile_Num_ScreenState();
}

class _Mobile_Num_ScreenState extends State<Mobile_Num_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              SizedBox(
                height: 18,
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(),
                child: Image.asset(
                  'assets/imgs/logo.png',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Verification',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your OTP code number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textFieldOTP(first: true, last: false),
                        _textFieldOTP(first: false, last: false),
                        _textFieldOTP(first: false, last: false),
                        _textFieldOTP(first: false, last: false),
                        _textFieldOTP(first: false, last: false),
                        _textFieldOTP(first: false, last: true),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home_Screen()));
                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0.0, 20.0),
                                      blurRadius: 30.0,
                                      color: Colors.black12),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(22.0)),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 165,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12.0, horizontal: 20.0),
                                  child: Text(
                                    "SUBMIT",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xff0096be),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(95.0),
                                      topLeft: Radius.circular(95.0),
                                      bottomRight: Radius.circular(200.0),
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.send,
                                  size: 20.0,
                                  color: Color(0xff0096be),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Didn't you receive any code?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Resend New Code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0096be),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _textFieldOTP({required bool first, last}) {
  return Container(
    height: 65,
    child: AspectRatio(
      aspectRatio: 0.6,
      child: TextField(
        autofocus: true,
        onChanged: (value) {},
        showCursor: false,
        readOnly: false,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counter: Offstage(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.black12),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Color(0xff0096be)),
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    ),
  );
}
