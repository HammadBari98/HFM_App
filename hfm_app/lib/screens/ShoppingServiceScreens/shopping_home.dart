import 'package:flutter/material.dart';

class Shopping_Home extends StatefulWidget {
  const Shopping_Home({Key? key}) : super(key: key);

  @override
  _Shopping_HomeState createState() => _Shopping_HomeState();
}

class _Shopping_HomeState extends State<Shopping_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Home"),
      ),
    );
  }
}
