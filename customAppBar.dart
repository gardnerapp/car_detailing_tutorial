import 'package:flutter/material.dart';

customAppBar(String title){
  return AppBar(
    title: Text(
      title,
      style: TextStyle(fontSize: 25.0),
    ),
    actions: [
      IconButton(icon: Icon(Icons.calendar_today_outlined), onPressed: (){}),
      IconButton(icon: Icon(Icons.person), onPressed: (){},)
    ],
  );
}

// TODO only git lib directory don't know what other system configs the root dir gives away
