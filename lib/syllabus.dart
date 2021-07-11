import 'package:flutter/material.dart';
import 'package:police_training/topic.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:police_training/translations/locale_keys.g.dart';


class Syllabus extends StatefulWidget {
  //const PageList({ Key? key }) : super(key: key);

  @override
  _SyllabusState createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
  var price=["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"];
  var name=["Zinger Burger","Chicken Biryani","Broast","Pizza","Chicken Tikka","Shawarma","Sandwich","Roll"];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
    
  
    (
backgroundColor: Color.fromRGBO(40, 69, 160, 1),      centerTitle: true,
      title: Text(LocaleKeys.Syllabus_text.tr(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
      
      ),
      body: ListView.builder(
  itemCount: 20,
  itemBuilder: (context, index) {
    return InkWell(
      onTap: (){
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Topic()),
  );
      },
      child:Card(child: Container(child: ListTile(title: Row(
      children: [
        Text(LocaleKeys.Syllabus_text.tr()),
     Text("${price[index]}")
         
      ],
    )))) );
      }));
  }

  
}