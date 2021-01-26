import 'package:flutter/material.dart';
import 'package:home_rental/signUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // A widget that detects gestures. Attempts to recognize gestures that correspond to its non-null callbacks. ...
    //  GestureDetector also listens for accessibility events and maps them to the callbacks.
    // You can use GestureDetector for monitoring single Tap, double Tap and a long press
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Service App',
      // the configuration of the overall visual Theme for a MaterialApp or a widget subtree within the app.
      theme: ThemeData(
          backgroundColor: Colors.blue,
          fontFamily: 'Lato',
          //brightness: Brightness.dark,
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.blueAccent,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          textTheme: TextTheme(
            headline6: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w300),
            // headline5: TextStyle(color: Colors.white, fontSize: 14),,
            subtitle1: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              fontFamily: 'OpenSans',
            ),
          ),
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(
              headline6: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontFamily: 'Satisfy',
                  fontWeight: FontWeight.w800),
            ),
            color: Colors.blue[700],
          )),
      home: SignUp(),
    );
  }
}
//fgg
