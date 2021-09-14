import 'package:flutter/material.dart';
import 'package:hfm_app/screens/FoodServiceScreens/food_home.dart';
import 'package:hfm_app/screens/FoodServiceScreens/food_order.dart';

class Food_Restaurant extends StatefulWidget {
  const Food_Restaurant({Key? key}) : super(key: key);

  @override
  _Food_RestaurantState createState() => _Food_RestaurantState();
}

class _Food_RestaurantState extends State<Food_Restaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Restaurant Screen"),
        // ),
        body: Column(children: [
      Card(
        child: new Container(
          height: 180,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Food_Order()));
                      },
                      child: Container(
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
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xff0096be),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
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
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.location_on,
                          color: Color(0xff0096be),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              new Text(
                'RESTAURANT - Name',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
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
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Delivery: 40 min',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.white, size: 16),
                  Text(
                    '3.9',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    '(2.5k)',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          decoration: new BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(00.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            image: new DecorationImage(
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.dstATop),
              image: new AssetImage(
                'assets/imgs/FoodService/RestaurantBG.jpg',
              ),
            ),
          ),
        ),
      ),
    ]));
  }
}
