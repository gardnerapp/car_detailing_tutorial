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
        color: Colors.white,
        child: SwitchListTile(
          title: Text(
            this.widget.option,
            style: TextStyle(
                color: Colors.black87,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            "\$${this.widget.cost}",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 16.0,
                fontWeight: FontWeight.w300),
          ),
          inactiveThumbColor: Colors.grey,
          activeColor: Theme.of(context).primaryColor,
          value: _selected,
          onChanged: (bool newValue) {
            setState(() {
              _selected = newValue;
            });
            this.widget.handleChange(_selected);
          },
        ),
      ),
    );
  }
}
