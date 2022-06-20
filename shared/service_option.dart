import 'package:flutter/material.dart';

class ServiceOption extends StatefulWidget {
  final String option;
  final double cost;
  final Function handleChange;
  const ServiceOption({Key key, this.option, this.cost, this.handleChange}) : super(key: key);

  @override
  _ServiceOptionState createState() => _ServiceOptionState();
}

class _ServiceOptionState extends State<ServiceOption> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
      ),
    );
  }
}
