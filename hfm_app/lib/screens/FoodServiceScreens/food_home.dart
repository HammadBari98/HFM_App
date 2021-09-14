import 'package:flutter/material.dart';
import 'package:hfm_app/screens/FoodServiceScreens/food_order.dart';
import '../../OrderService.dart';
import '../category_screen.dart';
import '../login_screen.dart';
import '../profile_screen.dart';

class Food_Service_Home extends StatefulWidget {
  @override
  _Food_Service_HomeState createState() => _Food_Service_HomeState();
}

class _Food_Service_HomeState extends State<Food_Service_Home> {
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Profile_Screen()));
                  },
                  child: Icon(
                    Icons.favorite_outline,
                    color: Color(0xff0096be),
                  ))),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Profile_Screen()));
                  },
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Color(0xff0096be),
                  ))),
        ],
        backgroundColor: Colors.white,
        title: Text("FOOD SERVICE",
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
                          leading: Icon(Icons.favorite_outline,
                              color: Color(0xff0096be)),
                          title: Text(
                            "Favourites",
                            style: TextStyle(
                                color: Color(0xff0096be), fontSize: 16),
                          ),
                          onTap: () {}),
                    ),
                    Divider(),
                    ListTile(
                        leading: Icon(Icons.person_outline,
                            color: Color(0xff0096be)),
                        title: Text(
                          "Profile",
                          style:
                              TextStyle(color: Color(0xff0096be), fontSize: 16),
                        ),
                        onTap: () {}),
                    Divider(),
                    ListTile(
                        leading: Icon(Icons.inventory_outlined,
                            color: Color(0xff0096be)),
                        title: Text(
                          "Orders",
                          style:
                              TextStyle(color: Color(0xff0096be), fontSize: 16),
                        ),
                        onTap: () {}),
                    Divider(),
                    ListTile(
                        leading: Icon(Icons.location_on_outlined,
                            color: Color(0xff0096be)),
                        title: Text(
                          "Addresses",
                          style:
                              TextStyle(color: Color(0xff0096be), fontSize: 16),
                        ),
                        onTap: () {}),
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
      body: Column(
        children: <Widget>[
          Container(
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                  autofocus: false,
                  enableSuggestions: false,
                  autocorrect: false,
                  style: TextStyle(
                      fontSize: 16.0, height: 2.0, color: Colors.black),
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.blue, width: 0.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.blue, width: 0.5),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xff0096be),
                    ),
                    hintText: "Search for shops & restaurants...",
                    contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  )),
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Food_Order()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Container(
                    height: 200.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 5.0),
                            blurRadius: 10.0,
                            color: Colors.black12),
                      ],
                      shape: BoxShape.rectangle,
                      color: Color(0xff0096be),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/imgs/FoodService/Home1.jpg"),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Category()));
                },
                child: Container(),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => Food_Service_Home()));
                    },
                    child: Container(
                      height: 150.0,
                      width: 160,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0.0, 5.0),
                              blurRadius: 10.0,
                              color: Colors.black12),
                        ],
                        shape: BoxShape.rectangle,
                        color: Color(0xff0096be),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                              AssetImage("assets/imgs/FoodService/Home2.png"),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Category()));
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "FAST DELIVERY",
                          style: TextStyle(
                              color: Color(0xff0096be),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Category()));
                    },
                    child: Container(
                      height: 150.0,
                      width: 160,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0.0, 5.0),
                              blurRadius: 10.0,
                              color: Colors.black12),
                        ],
                        shape: BoxShape.rectangle,
                        color: Color(0xff0096be),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                              AssetImage("assets/imgs/FoodService/Home3.jpg"),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Category()));
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "LARGE VARIETY",
                          style: TextStyle(
                              color: Color(0xff0096be),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: InkWell(
              onTap: () => Navigator.of(context).pop(),
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
                      padding:
                          EdgeInsets.symmetric(vertical: 9.0, horizontal: 30.0),
                      child: Center(
                        child: Text(
                          "Go Back",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
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
                      Icons.arrow_back_ios_new,
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
    );
  }
}
