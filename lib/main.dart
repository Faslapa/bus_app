
import 'package:flutter/material.dart';
import 'package:bus_app/home.dart';
import 'package:bus_app/preview.dart';
import 'package:bus_app/seat.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.yellow,
        accentColor: Colors.black,
        
      ),
      initialRoute: '/',
      routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => MyHomePage(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/second': (context) => Seat(),
    '/third': (context) => Preview(),
    
  },
    );
  }
}




