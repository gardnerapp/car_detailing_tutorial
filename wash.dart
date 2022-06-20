import 'package:car_detailing/customAppBar.dart';
import 'package:car_detailing/shared/book_appointment.dart';
import 'package:car_detailing/shared/instruction_text.dart';
import 'package:car_detailing/shared/service_option.dart';
import 'package:flutter/material.dart';


// TODO add callback to keep track of selected options and how much they cost
// create additional instructions form & route to receipt page

class Wash extends StatefulWidget {
  const Wash({Key key}) : super(key: key);

  @override
  _WashState createState() => _WashState();
}

class _WashState extends State<Wash> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectTime = TimeOfDay(hour: 07, minute: 15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar("Wash & Wax"),
        body: ListView(
          padding: const EdgeInsets.all(20.0), // const == compile time const does not change
          children: [
            SizedBox(height: 10.0),
            // mkdir shared && touch shared/instruction_text.dart
            instructionText("Our washers use the finest soaps "
                "imported from all four corners of the 7 seas!\n"),
            instructionText("For an extra Satoshi you can also have your scratches removed\n"), Divider(height: 20.0, thickness: 2.50, color: Theme.of(context).primaryColor,),

            instructionText("\nWhich Date & Time work for you?"),
            SizedBox(height: 10.0),
            BookAppointment(
              handleDateChange: (DateTime date) => setState(() {
                selectedDate = date;
              }),
              handleTimeChange: (TimeOfDay time) => setState((){
                selectTime = time;
              }),
            ),
            SizedBox(height: 20),
            instructionText("Please Select Your Options:\n"),
            ServiceOption(
              option: "Wax",
              cost: 100.0,
              handleChange: (bool val){
              }
            )
          ],
        )
    );
  }
}
