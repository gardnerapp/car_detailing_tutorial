import 'package:car_detailing/shared/booking_action_button.dart';
import 'package:flutter/material.dart';


class BookAppointment extends StatefulWidget {
  final Function handleDateChange;
  final Function handleTimeChange;

  const BookAppointment({Key key, this.handleDateChange, this.handleTimeChange})
      : super(key: key);

  @override
  _BookAppointmentState createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  DateTime date = DateTime.now();
  TimeOfDay time = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BookingActionButton(
          iconData: Icons.calendar_today_outlined,
          heroTag: "Date",
          onPressed: () async {
            await _selectDate(context);
            this.widget.handleDateChange(date);
          },
        ),
        BookingActionButton(
          iconData: Icons.timer,
          heroTag: "Time",
          onPressed: () async {
            await _selectTime(context);
            this.widget.handleTimeChange(time);
          },
        )
      ],
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: this.date,
        firstDate: DateTime.now(),
        lastDate: DateTime(2030, DateTime.april, 20),
        helpText: "When would you like to book your appointment",
        errorFormatText: "Enter valid date",
        errorInvalidText: "Enter valid date",
        builder: (context, child) {
          return Theme(
            data: ThemeData.dark(),
            child: child,
          );
        });

    if (pickedDate != null) {
      setState(() {
        date = pickedDate;
      });
    }
  }

  _selectTime(BuildContext context) async {
    final TimeOfDay pickedTime = await showTimePicker(
        context: context, initialTime: TimeOfDay(hour: 7, minute: 15));
    if (pickedTime != null) {
      setState(() {
        time = pickedTime;
      });
    }
  }
}
