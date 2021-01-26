import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_rental/screens/forgetPassword.dart';
import 'package:home_rental/screens/signIn.dart';
import 'package:home_rental/screens/signUp.dart';

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
          hintColor: Colors.grey[400],
          cardColor: Colors.lightBlue[50],
          backgroundColor: Colors.blueAccent,
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
            // error message
            caption: TextStyle(
                color: Colors.red,
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontFamily: "Lato"),
            // headline5: TextStyle(color: Colors.white, fontSize: 14),,
            //Field text
            subtitle1: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              fontFamily: 'Lato',
            ),

            headline6: TextStyle(
              color: Colors.green,
              fontSize: 24,
              fontFamily: 'OpenSans',
            ),
            //Titles
            bodyText2: TextStyle(
                color: Colors.blue[700],
                fontSize: 16,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold),
          ),
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(
              headline6: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: 'Satisfy',
                  fontWeight: FontWeight.w800),
            ),
            color: Colors.blue[700],
          ),
        ),
        home: SignUp(),
        initialRoute: '/',
        routes: {
          '/signup': (context) => SignUp(),
          '/signin': (context) => SignIn(),
          '/forgotpassword': (context) => ForgotPassword(),
        });
  }
}
//fgg
