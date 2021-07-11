import 'package:flutter/material.dart';




class ViewVideo extends StatefulWidget {
  //const DashBoard({ Key? key }) : super(key: key);

  @override
  _ViewVideoState createState() => _ViewVideoState();
}

class _ViewVideoState extends State<ViewVideo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Center(child: Text("Course Video"),),),
    );
  }
}