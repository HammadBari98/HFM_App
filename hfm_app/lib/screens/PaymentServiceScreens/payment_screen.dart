import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hfm_app/screens/PaymentServiceScreens/payment_home.dart';
import 'package:hfm_app/screens/PaymentServiceScreens/payment_mobile_loads.dart';
import 'package:hfm_app/screens/home_screen.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

// ------> HOME
class Payment_Home_Screen extends StatefulWidget {
  const Payment_Home_Screen({Key? key}) : super(key: key);

  @override
  _Payment_Home_ScreenState createState() => _Payment_Home_ScreenState();
}

class _Payment_Home_ScreenState extends State<Payment_Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "PAYMENT",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xff0096be),
          elevation: 1.0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.help_center_outlined,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(0.0),
                  ),
                  color: Color(0xff0096be),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.person_rounded,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Username",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "03330003333",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Text(
                          "RS. 00",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                MaterialButton(
                                    onPressed: () => {},
                                    color: Colors.white,
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      // Replace with a Row for horizontal icon + text
                                      children: <Widget>[
                                        Icon(Icons.add),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 18.0, right: 18.0),
                                          child: Text("Add Money"),
                                        )
                                      ],
                                    ))
                              ],
                            ),
                            Column(
                              children: [
                                MaterialButton(
                                    onPressed: () => {},
                                    color: Colors.white,
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      // Replace with a Row for horizontal icon + text
                                      children: <Widget>[
                                        Icon(Icons
                                            .account_balance_wallet_outlined),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 18.0, right: 18.0),
                                          child: Text("My Account"),
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Payment_Mobile_Loads()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 70.0,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 5.0),
                                  blurRadius: 10.0,
                                  color: Colors.black12),
                            ],
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/imgs/PaymentService/money-transfer.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          child: Text(
                            "Money Transfer",
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Payment_Mobile_Loads()));
                        },
                        child: Container(
                          height: 70.0,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 5.0),
                                  blurRadius: 10.0,
                                  color: Colors.black12),
                            ],
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/imgs/PaymentService/invoice.png",
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        child: Text(
                          "Utility Bills",
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
                                  builder: (context) =>
                                      Payment_Mobile_Loads()));
                        },
                        child: Container(
                          height: 70.0,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 5.0),
                                  blurRadius: 10.0,
                                  color: Colors.black12),
                            ],
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/imgs/PaymentService/smartphone.png"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Payment_Mobile_Loads()));
                        },
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Text(
                            "Mobile Loads & Bundles",
                            textAlign: TextAlign.center,
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
                                  builder: (context) =>
                                      Payment_Mobile_Loads()));
                        },
                        child: Container(
                          height: 70.0,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 5.0),
                                  blurRadius: 10.0,
                                  color: Colors.black12),
                            ],
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/imgs/PaymentService/bank.png"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        child: Text(
                          "Banking & Finance",
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Text(
                    "Top Picks",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Payment_Mobile_Loads()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 70.0,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 5.0),
                                  blurRadius: 10.0,
                                  color: Colors.black12),
                            ],
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/imgs/PaymentService/voucher.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 75,
                          height: 70,
                          child: Text(
                            "E-Vouchers",
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Payment_Mobile_Loads()));
                        },
                        child: Container(
                          height: 70.0,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 5.0),
                                  blurRadius: 10.0,
                                  color: Colors.black12),
                            ],
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/imgs/PaymentService/bus-ticket.png",
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        child: Text(
                          "Bus Tickets",
                          textAlign: TextAlign.center,
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
                                  builder: (context) =>
                                      Payment_Mobile_Loads()));
                        },
                        child: Container(
                          height: 70.0,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 5.0),
                                  blurRadius: 10.0,
                                  color: Colors.black12),
                            ],
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/imgs/PaymentService/tax.png"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Payment_Mobile_Loads()));
                        },
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Text(
                            "Tax Payment",
                            textAlign: TextAlign.center,
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
                                  builder: (context) =>
                                      Payment_Mobile_Loads()));
                        },
                        child: Container(
                          height: 70.0,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 5.0),
                                  blurRadius: 10.0,
                                  color: Colors.black12),
                            ],
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/imgs/PaymentService/payoneer.png"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        child: Text(
                          "Payoneer",
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Text(
                    "Utility Bills",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Payment_Mobile_Loads()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 70.0,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 5.0),
                                  blurRadius: 10.0,
                                  color: Colors.black12),
                            ],
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/imgs/PaymentService/electric-bill.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          child: Text(
                            "Electricity",
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Payment_Mobile_Loads()));
                        },
                        child: Container(
                          height: 70.0,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 5.0),
                                  blurRadius: 10.0,
                                  color: Colors.black12),
                            ],
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/imgs/PaymentService/net-bill.png",
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        child: Text(
                          "Internet",
                          textAlign: TextAlign.center,
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
                                  builder: (context) =>
                                      Payment_Mobile_Loads()));
                        },
                        child: Container(
                          height: 70.0,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 5.0),
                                  blurRadius: 10.0,
                                  color: Colors.black12),
                            ],
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/imgs/PaymentService/water-bill.png"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Payment_Mobile_Loads()));
                        },
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Text(
                            "Water",
                            textAlign: TextAlign.center,
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
                                  builder: (context) =>
                                      Payment_Mobile_Loads()));
                        },
                        child: Container(
                          height: 70.0,
                          width: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.0, 5.0),
                                  blurRadius: 10.0,
                                  color: Colors.black12),
                            ],
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/imgs/PaymentService/phone-bill.png"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        child: Text(
                          "Telephone",
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
// ------> HOME END

// ------> Location
class Payment_Location extends StatefulWidget {
  @override
  _Payment_LocationState createState() => _Payment_LocationState();
}

class _Payment_LocationState extends State<Payment_Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SlidingUpPanel(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1,
              color: Color(0xff0096be),
              child: Center(
                child: Text(
                  "MAP API",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ))
        ]),
      ),
      panelBuilder: (controller) => LocationPanelWidget(
        controller: controller,
      ),
    ));
  }
}

class LocationPanelWidget extends StatelessWidget {
  final ScrollController controller;

  const LocationPanelWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Column(
          children: [
            Column(
              children: [
                Icon(
                  Icons.keyboard_control_rounded,
                  size: 50,
                  color: Color(0xff0096be),
                ),
                Text(
                  "Agents Nearby",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  Icons.location_on_rounded,
                  color: Color(0xff0096be),
                ),
                title: Text(
                  "KHAN REFRESHMENT CENTER",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("HFM Cafeteria , Karachi"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  Icons.location_on_rounded,
                  color: Color(0xff0096be),
                ),
                title: Text(
                  "KHAN REFRESHMENT CENTER",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("HFM Cafeteria , Karachi"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  Icons.location_on_rounded,
                  color: Color(0xff0096be),
                ),
                title: Text(
                  "KHAN REFRESHMENT CENTER",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("HFM Cafeteria , Karachi"),
              ),
            )
          ],
        ),
      );
}

// ------> Location END

// ------> QR
class Payment_QR extends StatefulWidget {
  const Payment_QR({Key? key}) : super(key: key);

  @override
  _Payment_QRState createState() => _Payment_QRState();
}

class _Payment_QRState extends State<Payment_QR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SlidingUpPanel(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1,
              color: Color(0xff0096be),
              child: Column(
                children: [
                  SizedBox(
                    height: 130,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Color(0xff0096be),
                              size: 40,
                            ),
                          ),
                        ),
                        Container(
                            child: Text("Enable Camera",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              child: Text(
                            "Super Fast payments are just one permission away. Allow HFM to use your phone camera and start scanning QR Codes",
                            textAlign: TextAlign.center,
                          )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (context) => Category()));
                              },
                              child: Container(
                                height: 40,
                                width: 270,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(22.0)),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 240,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 9.0, horizontal: 30.0),
                                      child: Text(
                                        "Enable Camera Access",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
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
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              ),
                            ),
                            height: 40,
                            width: 45,
                            child: Icon(
                              Icons.photo_album,
                              color: Color(0xff0096be),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 230,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.app_registration_rounded,
                                  color: Color(0xff0096be),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Enter till ID",
                                  style: TextStyle(fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ))
        ]),
      ),
      panelBuilder: (controller) => QRPanelWidget(
        controller: controller,
      ),
    ));
  }
}

class QRPanelWidget extends StatelessWidget {
  final ScrollController controller;

  const QRPanelWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Column(
          children: [
            Column(
              children: [
                Icon(
                  Icons.keyboard_control_rounded,
                  size: 50,
                  color: Color(0xff0096be),
                ),
                Container(
                  child: Text(
                    "Recent Scans",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  children: [
                    Container(
                        child: Icon(
                      Icons.air,
                      size: 80,
                      color: Color(0xff0096be),
                    )),
                    Container(
                        child: Text(
                      "No Scans Yet",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          "Your recent QR Scans will show up here for quick access",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      );
}

// ------> QR END

// ------> Search
class Payment_Search extends StatefulWidget {
  @override
  _Payment_SearchState createState() => _Payment_SearchState();
}

class _Payment_SearchState extends State<Payment_Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Container(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Search",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Search anything here..",
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.white70),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Trending Searches",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        color: Colors.black12,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text("Bank"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        color: Colors.black12,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text("Send Money To HFM"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        color: Colors.black12,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text("Payment"),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          color: Colors.black12,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text("Topup"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          color: Colors.black12,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text("Payoneer"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          color: Colors.black12,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text("Debit Card"),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
// ------> Search End

// ------> Invite
class Payment_Invite extends StatefulWidget {
  const Payment_Invite({Key? key}) : super(key: key);

  @override
  _Payment_InviteState createState() => _Payment_InviteState();
}

class _Payment_InviteState extends State<Payment_Invite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                          child: Row(
                        children: [
                          Text(
                            "Invite & Earn",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                          child: Text(
                        "Invite your friends to register on HFM",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 60,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.4,
                          child: Column(
                            children: [
                              Container(
                                  child: Icon(
                                Icons.air,
                                size: 80,
                                color: Color(0xff0096be),
                              )),
                              Container(
                                  child: Text(
                                "No Pending Invites",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: Text(
                                    "Invite friends to register on HFM & earn Rs. 50 instantly",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  )),
                              SizedBox(
                                height: 50,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: InkWell(
                                    onTap: () {
                                      // Navigator.push(context,
                                      //     MaterialPageRoute(builder: (context) => Category()));
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 230,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(22.0)),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 200,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 9.0,
                                                horizontal: 30.0),
                                            child: Center(
                                              child: Text(
                                                "Invite Friends",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              color: Color(0xff0096be),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(50.0),
                                                topLeft: Radius.circular(50.0),
                                                bottomRight:
                                                    Radius.circular(200.0),
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
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// ------> Invite End
