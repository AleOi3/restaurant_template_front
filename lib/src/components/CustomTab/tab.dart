import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Tab(icon: Icon(Icons.home,), text: 'Home', );
  }
}