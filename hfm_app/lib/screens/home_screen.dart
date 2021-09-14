import 'package:flutter/material.dart';
import 'package:hfm_app/OrderService.dart';
import 'package:hfm_app/screens/FoodServiceScreens/food_home.dart';
import 'package:hfm_app/screens/PaymentServiceScreens/payment_home.dart';
import 'package:hfm_app/screens/profile_screen.dart';
import 'category_screen.dart';
import 'login_screen.dart';

class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff0096be),
        ),
        actions: [
          // --> LANGUAGE DROP DOWN <--
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: DropdownButton<String>(
          //     dropdownColor: Colors.white,
          //     underline: SizedBox(),
          //     icon: Icon(
          //       Icons.language,
          //       color: Colors.white,
          //     ),
          //     items: <String>[
          //       '🇺🇸 English',
          //       '🇵🇰 اُردُو‎',
          //     ].map((String value) {
          //       return DropdownMenuItem<String>(
          //         value: value,
          //         child: new Text(value),
          //       );
          //     }).toList(),
          //     onChanged: (_) {},
          //   ),
          // ),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Profile_Screen()));
                  },
                  child: Icon(Icons.person))),
        ],
        backgroundColor: Colors.white,
        title: Text("Home",
            style: TextStyle(
              color: Color(0xff0096be),
            )),
        elevation: 4.0,
        shadowColor: Color(0xff0096be),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        child: Drawer(
            child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 48,
                      width: 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/imgs/logo.png'),
                              fit: BoxFit.fill)),
                    ),
                    Divider(
                      color: Color(0xff0096be),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: ListTile(
                        leading: Icon(Icons.home, color: Color(0xff0096be)),
                        title: Text(
                          "My Profile",
                          style:
                              TextStyle(color: Color(0xff0096be), fontSize: 16),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Profile_Screen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    Divider(),
                    ListTile(
                        leading: Icon(Icons.integration_instructions_rounded,
                            color: Color(0xff0096be)),
                        title: Text(
                          "Service Categories",
                          style:
                              TextStyle(color: Color(0xff0096be), fontSize: 16),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Category();
                              },
                            ),
                          );
                        }),
                    Divider(),
                    ListTile(
                        leading: Icon(Icons.integration_instructions_rounded,
                            color: Color(0xff0096be)),
                        title: Text(
                          "My Order Service",
                          style:
                              TextStyle(color: Color(0xff0096be), fontSize: 16),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return OrderService();
                              },
                            ),
                          );
                        }),
                    Divider(),
                    ListTile(
                        leading: Icon(Icons.logout, color: Color(0xff0096be)),
                        title: Text(
                          "Logout",
                          style:
                              TextStyle(color: Color(0xff0096be), fontSize: 16),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Login_Screen();
                              },
                            ),
                          );
                        })
                  ],
                ),
              ),
            )
          ],
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xff00d4ff),
                      Color(0xff0096be),
                      Color(0xff0096be),
                    ],
                  ),
                ),
                child: ListTile(
                    leading: Image.asset('assets/imgs/ProfileImage.png'),
                    title: Text(
                      "Username",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "user@gmail.com",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Container(
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: MaterialButton(
                        onPressed: () => {},
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Add Cash",
                                style: TextStyle(
                                  color: Color(0xff0096be),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ),
            Divider(),
            // Container(
            //   child: Text("SERVICE",
            //       style: TextStyle(
            //           color: Color(0xff0096be),
            //           fontSize: 18,
            //           fontWeight: FontWeight.w900)),
            // ),

            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Food_Service_Home()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'assets/imgs/Food.jpg',
                        width: double.infinity,
                      ),
                    ),
                  ),
                )),

            // Container(
            //   child: Padding(
            //     padding: const EdgeInsets.only(right: 98.0),
            //     child: Text("MORE SERVICE YOU MAY LIKE!",
            //         style: TextStyle(
            //             color: Color(0xff0096be),
            //             fontSize: 18,
            //             fontWeight: FontWeight.w900)),
            //   ),
            // ),

            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Payment_Home()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'assets/imgs/paymentService.jpg',
                        width: double.infinity,
                      ),
                    ),
                  ),
                )),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Category()));
                },
                child: Container(
                  height: 40,
                  width: 220,
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
                        width: 185,
                        padding: EdgeInsets.symmetric(
                            vertical: 9.0, horizontal: 30.0),
                        child: Text(
                          "See All Services",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff0096be),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            topLeft: Radius.circular(50.0),
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
          ],
        ),
      ),
    );
  }
}
