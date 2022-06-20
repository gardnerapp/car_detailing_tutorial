import 'package:car_detailing/customAppBar.dart';
import 'package:car_detailing/services/services_tile.dart';
import 'package:car_detailing/wash.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          splashColor: Colors.orange,
          primarySwatch: Colors.deepOrange,
          cardTheme: CardTheme(
              elevation: 16.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              shadowColor: Colors.orange),
        ),
        home: HelloWorld(name: "Corey"));
  }
}


class HelloWorld extends StatelessWidget {
  final String name;

  const HelloWorld({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar("Corey's Car Shop"),
        body: ListView(
          children: [
            ServiceTile(
                title: "Wash & Wax",
                subtitle: "Summer Is Coming",
                asset: "car2.jpg",
                iconData: Icons.wash,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Wash()));
                }),
            ServiceTile(
              title: "Interior Cleaning",
              subtitle: "Refreshes Your Baby",
              asset: "car3.jpg",
            iconData: Icons.ac_unit,
            onTap: () => print("Tile 2 Tapped! "),
          ),
          ServiceTile(
            title: "Mechanical Checkup",
            subtitle: "Drive Fast!!",
            asset: "car1.jpg",
            iconData: Icons.local_gas_station,
            onTap: () => print("Tile 3 Tapped! "),
          ),
        ],
      )
    );
  }
}
