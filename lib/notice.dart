import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:police_training/translations/locale_keys.g.dart';

class Notice extends StatefulWidget {
  //const Notice({ Key? key }) : super(key: key);

  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar
    
  
    (
      backgroundColor: Color.fromRGBO(40, 69, 160, 1),
      centerTitle: true,
      title: Text(LocaleKeys.Notice_Board_text.tr(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
      
      ),
        body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) {
          return new ExpansionTile(
            title: new Text(LocaleKeys.Notice_Board_text.tr(), style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            children: <Widget>[
Text("Schedule of Courses has been updated"),
            ]
 
      
      );
        }),));
  }
  }