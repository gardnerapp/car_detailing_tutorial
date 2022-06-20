import 'package:car_detailing/customAppBar.dart';
import 'package:flutter/material.dart';

class Wash extends StatelessWidget {
  const Wash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Wash & Wax"),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
