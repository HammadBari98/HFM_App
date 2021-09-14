import 'package:flutter/material.dart';
import 'package:hfm_app/screens/FoodServiceScreens/food_restaurants.dart';
import 'package:hfm_app/screens/home_screen.dart';
import 'package:hfm_app/screens/landing_screen.dart';

class Food_Order extends StatefulWidget {
  @override
  _Food_OrderState createState() => _Food_OrderState();
}

class _Food_OrderState extends State<Food_Order> {
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
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("FOOD ORDER",
              style: TextStyle(
                color: Color(0xff0096be),
              )),
          elevation: 4.0,
          shadowColor: Color(0xff0096be),
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Column(children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        "BEST DEALS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff0096be),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Food_Service_Home()));
                              },
                              child: Container(
                                height: 180.0,
                                width: 150,
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
                                    image: AssetImage(
                                        "assets/imgs/FoodService/bg-deals.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Category()));
                              },
                              child: Container(),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Food_Service_Home()));
                              },
                              child: Container(
                                height: 180.0,
                                width: 150,
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
                                    image: AssetImage(
                                        "assets/imgs/FoodService/bg-deals.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Category()));
                              },
                              child: Container(),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Food_Service_Home()));
                              },
                              child: Container(
                                height: 180.0,
                                width: 150,
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
                                    image: AssetImage(
                                        "assets/imgs/FoodService/bg-deals.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Category()));
                              },
                              child: Container(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        "TOP PICKS",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff0096be),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Food_Restaurant()));
                },
                child: Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          leading: Container(
                                              color: Color(0xff0096be),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 2,
                                                    left: 10.0,
                                                    top: 3,
                                                    bottom: 3),
                                                child: Text(
                                                  "TOP RATED",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                          trailing: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Food_Order()));
                                            },
                                            child: Icon(
                                              Icons.favorite_outline,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 22.0, top: 10),
                                          child: Column(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.rectangle,
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(20.0),
                                                      topRight:
                                                          Radius.circular(20.0),
                                                      bottomLeft:
                                                          Radius.circular(20.0),
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0,
                                                            right: 8.0,
                                                            top: 2.0,
                                                            bottom: 2.0),
                                                    child: Text("40 min",
                                                        style: TextStyle(
                                                            color: Color(
                                                              0xff0096be,
                                                            ),
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    height: 145.0,
                                    width: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/imgs/FoodService/burger1.png"),
                                            fit: BoxFit.fill)),
                                    alignment: Alignment.topLeft,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 235,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "Xande's - Tipu Sultan",
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.star,
                                                    color: Color(0xff0096be),
                                                    size: 15,
                                                  ),
                                                  Text(
                                                    "4.4",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "(2k+)",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 235,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "\$\$\$ - Fast Food",
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 235,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .delivery_dining_rounded,
                                                    color: Color(0xff0096be),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Text(
                                                    "RS. 49",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xff0096be),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          leading: Container(
                                              color: Color(0xff0096be),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 2,
                                                    left: 10.0,
                                                    top: 3,
                                                    bottom: 3),
                                                child: Text(
                                                  "Chill Out -70% OFF",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                          trailing: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Food_Order()));
                                            },
                                            child: Icon(
                                              Icons.favorite_outline,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 22.0, top: 10),
                                          child: Column(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.rectangle,
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(20.0),
                                                      topRight:
                                                          Radius.circular(20.0),
                                                      bottomLeft:
                                                          Radius.circular(20.0),
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0,
                                                            right: 8.0,
                                                            top: 2.0,
                                                            bottom: 2.0),
                                                    child: Text("40 min",
                                                        style: TextStyle(
                                                            color: Color(
                                                              0xff0096be,
                                                            ),
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    height: 145.0,
                                    width: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/imgs/FoodService/chinese1.png"),
                                            fit: BoxFit.fill)),
                                    alignment: Alignment.topLeft,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 235,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "Italiano - DHA",
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.star,
                                                    color: Color(0xff0096be),
                                                    size: 15,
                                                  ),
                                                  Text(
                                                    "4.9",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "(2k+)",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 235,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "\$\$\$ - Chinese Food",
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 235,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .delivery_dining_rounded,
                                                    color: Color(0xff0096be),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Text(
                                                    "RS. 99",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xff0096be),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        "ALL RESTAURANTS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff0096be),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Food_Restaurant()));
                },
                child: Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          leading: Container(
                                              color: Color(0xff0096be),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 2,
                                                    left: 10.0,
                                                    top: 3,
                                                    bottom: 3),
                                                child: Text(
                                                  "FLAST 20% OFF",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                          trailing: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Food_Order()));
                                            },
                                            child: Icon(
                                              Icons.favorite_outline,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 22.0, top: 10),
                                          child: Column(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.rectangle,
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(20.0),
                                                      topRight:
                                                          Radius.circular(20.0),
                                                      bottomLeft:
                                                          Radius.circular(20.0),
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0,
                                                            right: 8.0,
                                                            top: 2.0,
                                                            bottom: 2.0),
                                                    child: Text("30 min",
                                                        style: TextStyle(
                                                            color: Color(
                                                              0xff0096be,
                                                            ),
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    height: 145.0,
                                    width: 330,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/imgs/FoodService/pizza1.png"),
                                            fit: BoxFit.fill)),
                                    alignment: Alignment.topLeft,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 300,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: <Widget>[
                                                  Text(
                                                    "Pizzahut - Tipu Sultan",
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.star,
                                                    color: Color(0xff0096be),
                                                    size: 15,
                                                  ),
                                                  Text(
                                                    "4.8",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    "(100+)",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 300,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    "\$\$\$ - Pizza",
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 300,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons
                                                        .delivery_dining_rounded,
                                                    color: Color(0xff0096be),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  Text(
                                                    "RS. 100",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xff0096be),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ])
          ]),
        ));
  }
}
