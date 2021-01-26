import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  Widget appBarTitle;

  MyAppBar(this.appBarTitle);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //backgroundColor: Colors.grey[900],
      title: appBarTitle,
      centerTitle: true,
    );
  }
}
