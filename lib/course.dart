import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:police_training/translations/locale_keys.g.dart';





class Course extends StatefulWidget {
  //const DashBoard({ Key? key }) : super(key: key);

  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Center(child: Text(LocaleKeys.Course_Outline_text.tr()),),),
    );
  }
}