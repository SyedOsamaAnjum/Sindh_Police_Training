import 'package:flutter/material.dart';




class Topic extends StatefulWidget {
  //const DashBoard({ Key? key }) : super(key: key);

  @override
  _TopicState createState() => _TopicState();
}

class _TopicState extends State<Topic> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Center(child: Text("Topic  Outline Pdf"),),),
    );
  }
}