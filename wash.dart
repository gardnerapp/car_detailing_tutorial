import 'package:car_detailing/customAppBar.dart';
import 'package:car_detailing/shared/book_appointment.dart';
import 'package:car_detailing/shared/instruction_text.dart';
import 'package:flutter/material.dart';

// TODO Debug DateTime and TimeOfDay selection error

class Wash extends StatefulWidget {
  const Wash({Key key}) : super(key: key);

  @override
  _WashState createState() => _WashState();
}

class _WashState extends State<Wash> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar("Wash & Wax"),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            spacer(),
            instructionText("Our Soaps are imported from all 4 corners of the "
                "7 seas they will leave your car shiny and looking brand new\n"),
            instructionText(
                "For an extra Satoshi you can have your car smelling like roses"),
            spacer(),
            Divider(
              height: 5.0,
              thickness: 5.0,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 25.0),
            BookAppointment(

            ),
          ],
        ));
  }
}

SizedBox spacer()=> SizedBox(height: 20.0);