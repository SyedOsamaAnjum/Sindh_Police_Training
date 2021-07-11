import 'package:flutter/material.dart';




class Notificatio extends StatefulWidget {
  //const DashBoard({ Key? key }) : super(key: key);

  @override
  _NotificatioState createState() => _NotificatioState();
}

class _NotificatioState extends State<Notificatio> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar
    
  
    (
      backgroundColor: Color.fromRGBO(40, 69, 160, 1),
      centerTitle: true,
      title: Text("Notifications",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
      
      ),
        body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) {
          return new ExpansionTile(
            title: new Text("New Announcement", style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            children: <Widget>[

              Text("Your Course Has Been Updated Successfully"),
            ]
 
      
      );
        }),));
  }
  }