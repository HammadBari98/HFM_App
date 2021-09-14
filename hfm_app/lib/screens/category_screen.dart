import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hfm_app/screens/FoodServiceScreens/food_home.dart';

import 'PaymentServiceScreens/payment_home.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0096be),
        title: Text("Service"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search anything...",
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0),
                    )),
              ),
            ),
            Column(
              children: [
                CarouselSlider(
                  items: [
                    Material(
                      child: InkWell(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/imgs/electrician3.jpg',
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    Material(
                      child: InkWell(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/imgs/metalFabrication.jpg',
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    Material(
                      child: InkWell(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/imgs/onlineTaxi.png',
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                      height: 180.0,
                      autoPlay: true,
                      autoPlayCurve: Curves.easeInOut,
                      viewportFraction: 0.7,
                      enlargeCenterPage: true),
                ),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Food_Service_Home()));
                      },
                      child: Container(
                        height: 120.0,
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
                            image: AssetImage("assets/imgs/Food.jpg"),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Category()));
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "FOOD SERVICE",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Category()));
                      },
                      child: Container(
                        height: 120.0,
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
                            image: AssetImage("assets/imgs/plumber2.jpg"),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Category()));
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "UTILTY SERVICE",
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 120.0,
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
                          image: AssetImage("assets/imgs/onlineTaxi2.png"),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ONLINE RIDE SERVICE",
                          style: TextStyle(
                              color: Color(0xff0096be),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Payment_Home()));
                      },
                      child: Container(
                        height: 120.0,
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
                            image: AssetImage("assets/imgs/paymentService.jpg"),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Category()));
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "PAYMENT SERVICE",
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
          ],
        ),
      ),
    );
  }
}
