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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final appBarHeight = 120.0;
  var sizedBoxHeight1 = 10.0;
  var sizedBoxHeight2 = 40.0;
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
        // backgroundColor: Color.fromRGBO(88, 133, 175, 100),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(appBarHeight),
          child: MyAppBar(Text('The Nest')),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: sizedBoxHeight2),
                Container(
                  // child: Card(
                  //   margin: EdgeInsets.symmetric(horizontal: 10),
                  //   color: Color.fromRGBO(46, 139, 192, 100),
                  //   elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Username"),
                      Card(
                        // margin: EdgeInsets.symmetric(horizontal: 10),
                        // color: Color.fromRGBO(65, 114, 159, 100),
                        child: Row(
                          children: [
                            Expanded(
                              child: MyTextField(
                                  myHintText: 'Izulife Emmie',
                                  // myLabelText: 'Username',
                                  myValidators: validator.validateName,
                                  myKeyboardType: TextInputType.name,
                                  myObscureText: false,
                                  myOnSaved: (value) {
                                    fullName = value;
                                  }),
                            ),
                            Icon(Icons.person),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: sizedBoxHeight1),
                Container(
                  // child: Card(
                  //   margin: EdgeInsets.symmetric(horizontal: 10),
                  //   color: Color.fromRGBO(46, 139, 192, 100),
                  //   elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email"),
                      Card(
                        // margin: EdgeInsets.symmetric(horizontal: 10),
                        // color: Color.fromRGBO(65, 114, 159, 100),
                        child: Row(
                          children: [
                            Expanded(
                              child: MyTextField(
                                  myHintText: 'example@gmail.com',
                                  // myLabelText: 'Email',
                                  myValidators: validator.validateEmail,
                                  myKeyboardType: TextInputType.emailAddress,
                                  myObscureText: false,
                                  myOnSaved: (value) {
                                    email = value;
                                  }),
                            ),
                            Icon(Icons.email_rounded),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: sizedBoxHeight1),
                Container(
                  // child: Card(
                  //   margin: EdgeInsets.symmetric(horizontal: 10),
                  //   color: Color.fromRGBO(46, 139, 192, 100),
                  //   elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Password"),
                      Card(
                        // margin: EdgeInsets.symmetric(horizontal: 10),
                        // color: Color.fromRGBO(65, 114, 159, 100),
                        child: Row(
                          children: [
                            Expanded(
                              child: MyTextField(
                                  myHintText: 'please enter your password',
                                  // myLabelText: 'Password',
                                  myValidators: validator.validatePassword,
                                  myKeyboardType: TextInputType.visiblePassword,
                                  myObscureText: true,
                                  myOnSaved: (value) {
                                    password = value;
                                  }),
                            ),
                            //TODO setup the obscure text and icon...
                            IconButton(
                              padding: EdgeInsets.all(0),
                              alignment: Alignment.centerRight,
                              icon: Icon(
                                Icons.visibility_rounded,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: sizedBoxHeight1),
                Container(
                  // child: Card(
                  //   margin: EdgeInsets.symmetric(horizontal: 10),
                  //   color: Color.fromRGBO(46, 139, 192, 100),
                  //   elevation: 5,
                  // TODO validation for re-enter password
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Re-enter password"),
                      Card(
                        // margin: EdgeInsets.symmetric(horizontal: 10),
                        // color: Color.fromRGBO(65, 114, 159, 100),
                        child: MyTextField(
                            myHintText: 'Re-enter password',
                            // myLabelText: 'Re-enter password',
                            myValidators: validator.validatePassword,
                            myKeyboardType: TextInputType.emailAddress,
                            myObscureText: true,
                            myOnSaved: (value) {
                              if (value == password) ;
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: sizedBoxHeight2,
                ),
                Buttons1(
                  "Submit",
                  () {},
                  Color.fromRGBO(39, 68, 144, 100),
                ),
                SizedBox(
                  height: sizedBoxHeight1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    SizedBox(
                      width: sizedBoxHeight1,
                    ),
                    TextButton(
                      child: Text("SIGNIN"),
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).popAndPushNamed('/signin');
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
