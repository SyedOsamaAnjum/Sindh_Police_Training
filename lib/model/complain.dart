import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:police_training/translations/locale_keys.g.dart';

class Complain extends StatefulWidget {
 // const Complain({ Key? key }) : super(key: key);

  @override
  _ComplainState createState() => _ComplainState();
}

class _ComplainState extends State<Complain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
    
  
    (
backgroundColor: Color.fromRGBO(40, 69, 160, 1),      centerTitle: true,
      title: Text(LocaleKeys.Complaint_text.tr(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
      
      ),
      body: Center(child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 280,
          height: 80,
          child: TextFormField(
            
          textAlign: TextAlign.center,
          decoration: new InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
            hintText: 'Title',
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(0.0),
              ),
              borderSide: new BorderSide(
                color: Colors.black,
                width: 20.0,
              ),
            ),
          ),
    ),
        ),
            Container(
              margin: EdgeInsets.only(top:30),
              height: 240,
              width: 280,
              child: TextFormField(
                
              textAlign: TextAlign.center,
              decoration: new InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 200.0),
                hintText: 'Enter Complain here',
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(0.0),
                  ),
                  borderSide: new BorderSide(
                    color: Colors.black,
                    width: 20.0,
                  ),
                ),
              ),
    ),
            ),
             Container(
   margin: EdgeInsets.fromLTRB(60, 20, 30, 0),
  height: 50,
  width: 250,
  decoration: BoxDecoration(
          color: Color.fromRGBO(40, 69, 160, 1), borderRadius: BorderRadius.circular(20)),
  child: FlatButton(
        onPressed: (){


        },
        child: Text(
          'Send',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
  ),
),

          ],
        ),
      ),
      ),);
  }
}