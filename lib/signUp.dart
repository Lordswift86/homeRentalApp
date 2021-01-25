import 'package:flutter/material.dart';
import 'package:home_rental/widgets.dart/appBar.dart';
import 'package:home_rental/widgets.dart/MyTextField.dart';
import 'package:home_rental/widgets.dart/button.dart';
import 'package:home_rental/widgets.dart/validator.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final appBarHeight = 120.0;
  var email;
  var fullName;
  var password;
  var validator = MyValidator();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },

      // child: StreamProvider<User>.value(
      //   value: AuthService().user,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(88, 133, 175, 100),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(appBarHeight),
          child: MyAppBar(Text('The Nest')),
        ),
        body: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Container(
                  // child: Card(
                  //   margin: EdgeInsets.symmetric(horizontal: 10),
                  //   color: Color.fromRGBO(46, 139, 192, 100),
                  //   elevation: 5,
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    color: Color.fromRGBO(65, 114, 159, 100),
                    child: MyTextField(
                        myHintText: 'Izulife Emmie',
                        myLabelText: 'Username',
                        myValidators: validator.validateName,
                        myKeyboardType: TextInputType.name,
                        myObscureText: false,
                        myOnSaved: (value) {
                          fullName = value;
                        }),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  // child: Card(
                  //   margin: EdgeInsets.symmetric(horizontal: 10),
                  //   color: Color.fromRGBO(46, 139, 192, 100),
                  //   elevation: 5,
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    color: Color.fromRGBO(65, 114, 159, 100),
                    child: MyTextField(
                        myHintText: 'example@gmail.com',
                        myLabelText: 'Email',
                        myValidators: validator.validateEmail,
                        myKeyboardType: TextInputType.emailAddress,
                        myObscureText: false,
                        myOnSaved: (value) {
                          email = value;
                        }),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  // child: Card(
                  //   margin: EdgeInsets.symmetric(horizontal: 10),
                  //   color: Color.fromRGBO(46, 139, 192, 100),
                  //   elevation: 5,
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    color: Color.fromRGBO(65, 114, 159, 100),
                    child: MyTextField(
                        myHintText: 'please enter your password',
                        myLabelText: 'Password',
                        myValidators: validator.validatePassword,
                        myKeyboardType: TextInputType.visiblePassword,
                        myObscureText: true,
                        myOnSaved: (value) {
                          password = value;
                        }),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  // child: Card(
                  //   margin: EdgeInsets.symmetric(horizontal: 10),
                  //   color: Color.fromRGBO(46, 139, 192, 100),
                  //   elevation: 5,
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    color: Color.fromRGBO(65, 114, 159, 100),
                    child: MyTextField(
                        myHintText: 'Re-enter password',
                        myLabelText: 'Re-enter password',
                        myValidators: validator.validatePassword,
                        myKeyboardType: TextInputType.emailAddress,
                        myObscureText: true,
                        myOnSaved: (value) {
                          if (value == password) ;
                        }),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Buttons1(
                  "Submit",
                  () {},
                  Color.fromRGBO(39, 68, 144, 100),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
