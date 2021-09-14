import 'package:flutter/material.dart';
import 'package:hfm_app/screens/PaymentServiceScreens/payment_screen.dart';

class Payment_Home extends StatefulWidget {
  @override
  _Payment_HomeState createState() => _Payment_HomeState();
}

class _Payment_HomeState extends State<Payment_Home> {
  var _pages_Data = [
    Payment_Home_Screen(),
    Payment_Location(),
    Payment_QR(),
    Payment_Search(),
    Payment_Invite()
  ];
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Payment Screen"),
        // ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: _pages_Data[_selectedItem],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xff0096be),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on,
                  color: Color(0xff0096be),
                ),
                label: "Location"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.qr_code,
                  color: Color(0xff0096be),
                ),
                label: "Scan QR"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Color(0xff0096be),
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.share,
                  color: Color(0xff0096be),
                ),
                label: "Invite"),
          ],
          currentIndex: _selectedItem,
          onTap: (setvalue) {
            setState(() {
              _selectedItem = setvalue;
            });
          },
        ));
  }
}
