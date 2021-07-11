
import 'package:flutter/material.dart';
import 'package:police_training/contact.dart';
import 'package:police_training/course.dart';
import 'package:police_training/instructions.dart';
import 'package:police_training/leaves.dart';
import 'package:police_training/main.dart';
import 'package:police_training/model/complain.dart';
import 'package:police_training/notice.dart';
import 'package:police_training/suggestion.dart';
import 'package:police_training/syllabus.dart';
import 'package:police_training/training.dart';
import 'package:police_training/video.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:police_training/translations/locale_keys.g.dart';

import 'notification.dart';
class Dashboard extends StatefulWidget {
  //const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
    List<String> images = [  
  LocaleKeys.Course_Outline_text.tr(),LocaleKeys.Syllabus_text.tr(),"Videos","Notice Board","Contact List","Instructions","Complaint","Suggestions"
  ];  
  var quantity=0;
final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(40, 69, 160, 1),
        
         actions: <Widget>[
            InkWell(
      onTap: () async {
       await  context.setLocale(Locale('ar'));
    
      } ,
      child: Container
      (
        margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
        child: Text("Sindhi",style: TextStyle(fontSize: 15),))),
    
    InkWell(
      onTap:  () async {
       await  context.setLocale(Locale('en'));
    
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
        child: Text("English",style: TextStyle(fontSize: 15),))),
    
    InkWell(
      onTap: () async {
       await  context.setLocale(Locale('ur'));
    
      } ,
      child: Container
      (
        margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
        child: Text("اردو",style: TextStyle(fontSize: 15),))),
   
    IconButton(
      icon: Icon(
        Icons.notifications,
        color: Colors.white,
      ),
      onPressed: () async {
      
                                       Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Notificatio()),
  );
    
      },
    ),
    ],
       
        
       
     leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu_rounded,color: Colors.white,size: 25,),
            onPressed: ()
               {
       Scaffold.of(context).openDrawer();
    
      },
            
          ),
        ),
        
        
      ),
        drawer: Drawer(elevation: 10,
        child: Container(height: double.infinity,child: Stack(children: [

Container(
                  height: 200, 
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.teal.withOpacity(0.7)),
   child: Column(
     children: [
       Container(
         width: 128,
           height: 128,
           decoration: BoxDecoration(
           
        image: DecorationImage(
          image: AssetImage(
              'assets/images/logox.png'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),
       ),
       Container(
         margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
         child: Center(
           child: ListTile(
                title: Text(LocaleKeys.name_text.tr(),style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white,),),
                subtitle: Text(LocaleKeys.course_Title_text.tr(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),),
         ),)
             
       
         ]
   ),

         ) ,
        InkWell
        (
          onTap: (){
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Positioned(
                          right: -40.0,
                          top: -40.0,
                          child: InkResponse(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: CircleAvatar(
                              child: Icon(Icons.close),
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(hintText: "Title"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(hintText: "Write Complain here"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RaisedButton(
                                  child: Text("Send"),
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      _formKey.currentState.save();
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                });
          },
            child: Container(
              margin: EdgeInsets.only(top:200),
             child: Card(
               elevation: 08,
                          child: ListTile(
                 leading: Icon(Icons.compare,color: Colors.red,size: 22,),
                 trailing: Icon(Icons.play_arrow,color: Colors.blue,),
                 title: Text(LocaleKeys.Complaint_text.tr(),style: TextStyle(color: Colors.black,fontSize: 12),),),
             ),
         ),
          ),
          InkWell(
            onTap: (){
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Positioned(
                          right: -40.0,
                          top: -40.0,
                          child: InkResponse(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: CircleAvatar(
                              child: Icon(Icons.close),
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(hintText: "Title"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(hintText: "Write Feedback here"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RaisedButton(
                                  child: Text("Send"),
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      _formKey.currentState.save();
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                });
            },
            child: Container(
              margin: EdgeInsets.only(top:257),
             child: Card(
               elevation: 08,
                          child: ListTile(
                 leading: Icon(Icons.feedback,color: Colors.red,size: 12,),
                 trailing: Icon(Icons.swipe,color: Colors.blue,),
                 title: Text(LocaleKeys.Suggestions_text.tr(),style: TextStyle(color: Colors.black,fontSize: 12),),),
             ),
         ),
          ),
          Container(
            margin: EdgeInsets.only(top:314),
           child: Card(
             elevation: 08,
                        child: ListTile(
               leading: Icon(Icons.visibility,color: Colors.red,size: 12,),
               trailing: Icon(Icons.logout,color: Colors.blue,),
               title: Text(LocaleKeys.Logout_text.tr(),style: TextStyle(color: Colors.black,fontSize: 12),),),
           ),
         ),
      
         ],),
    ),),
    body: 
           
             
                         Container(
               height: 1500,
          decoration: BoxDecoration(
            color: Colors.white,
        ),
                          child: SingleChildScrollView(
                                                      child: Stack(
                 children:[  
                   Container(
                     margin: EdgeInsets.fromLTRB(20, 20,20 ,20),
                     height: 150,width: 320,
                     child: Center(child: InkWell(

                       onTap:  (){
 _settingModalBottomSheet();
                       }
                       
                       
                                            ,child: Container(
                         margin: EdgeInsets.only(top:0),
                                              child: Column(
                           children: [
                             Container(width: 40,
           height: 40,
           decoration: BoxDecoration(
           
        image: DecorationImage(
          image: AssetImage(
              'assets/images/logo.png'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),),
                             Text(LocaleKeys.name_text.tr(),style: TextStyle(color: Colors.white,fontSize: 30),),
                             Text(LocaleKeys.course_Title_text.tr(),style: TextStyle(color: Colors.white,fontSize: 15),),
                             Text(LocaleKeys.course_no_text.tr(),style: TextStyle(color: Colors.white,fontSize: 15),),
                           ],
                         ),
                       ),
                     )),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Colors.teal.withOpacity(0.7),
                       )
                       ,
                       ),
                                          

                   
                  
                        Container(
                          margin: EdgeInsets.only(top: 180),
                           
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: (){
                                                                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Course()),
  );
     
                                        },
                                        child: Card(
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                          child: Container(
                                           margin: EdgeInsets.only(top:5),
                                            height: 140,
                                            width: 160,
                                            decoration: BoxDecoration(border: Border.all(),
                                            borderRadius: BorderRadius.circular(20),
                                            ),
                                            child:  Center(child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.leaderboard,color: Color.fromRGBO(40, 69, 160, 1),),
                                                Text(LocaleKeys.Course_Outline_text.tr()),
                                              ],
                                            )),),
                                        ),
                                      ),
                                         InkWell(
                                           onTap: (){
                                             
                                       Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Syllabus()),
  );
                                           },
                                           child: Card(
                                             elevation: 10,
                                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                             child: Container(
                                       
                                        height: 140,margin: EdgeInsets.only(top:5),
                                        width: 160,
                                        decoration: BoxDecoration(border: Border.all(),
                                        borderRadius: BorderRadius.circular(20),
                                        ),
                                        child:  Center(child: Column(

                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                               Icon(Icons.library_books_outlined,size: 30,color: Colors.red.withOpacity(0.8),),
                                              Text(LocaleKeys.Syllabus_text.tr()),
                                            ],
                                        )),),
                                           ),
                                         ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: (){
                                                                           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Video()),
  );
     
                                        },
                                        child: Card(
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                          child: Container(
                                           margin: EdgeInsets.only(top:5),
                                            height: 140,
                                            width: 160,
                                            decoration: BoxDecoration(border: Border.all(),
                                            borderRadius: BorderRadius.circular(20),
                                            ),
                                            child:  Center(child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.video_library,size: 30,color: Color.fromRGBO(40, 69, 160, 1), ),
                                                Text(LocaleKeys.Videos_text.tr()),
                                              ],
                                            )),),
                                        ),
                                      ),
                                         InkWell(
                                           onTap: (){
                                                                                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Notice()),
  );
                                           },
                                           child: Card(
                                             elevation: 10,
                                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                             child: Container(
                                       margin: EdgeInsets.only(top:5),
                                        height: 140,
                                        width: 160,
                                        decoration: BoxDecoration(border: Border.all(),
                                        borderRadius: BorderRadius.circular(20),
                                        ),
                                        child:  Center(child: Column(

                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                            Icon(Icons.notification_important,size: 30,color: Color.fromRGBO(40, 69, 160, 1), ),
                                              Text(LocaleKeys.Notice_Board_text.tr()),
                                            ],
                                        )),),
                                           ),
                                         ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          
                                       Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Contact()),
  );
                                        },
                                        child: Card(
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                          child: Container(
                                           
                                            height: 140,
                                            width: 160,
                                            decoration: BoxDecoration(border: Border.all(),
                                            borderRadius: BorderRadius.circular(20),
                                            ),
                                            child:  Center(child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.contact_phone_sharp,size: 30,color: Color.fromRGBO(40, 69, 160, 1), ),
                                                Text(LocaleKeys.Contact_List_text.tr()),
                                              ],
                                            )),),
                                        ),
                                      ),
                                         InkWell(
                                           onTap: (){
                                             
                                       Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Instructions()),
  );
                                           },
                                           child: Card(
                                             elevation: 10,
                                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                             child: Container(
                                       margin: EdgeInsets.only(top:5),
                                        height: 140,
                                        width: 160,
                                        decoration: BoxDecoration(border: Border.all(),
                                        borderRadius: BorderRadius.circular(20),
                                        ),
                                        child:  Center(child: Column(

                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                               Icon(Icons.integration_instructions,size: 30,color: Color.fromRGBO(40, 69, 160, 1), ),
                                              Text(LocaleKeys.Instructions_text.tr()),
                                            ],
                                        )),),
                                           ),
                                         ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          
                                       Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Complain()),
  );
                                        },
                                        child: Card(
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                          child: Container(
                                           margin: EdgeInsets.only(top:5),
                                            height: 140,
                                            width: 160,
                                            decoration: BoxDecoration(border: Border.all(),
                                            borderRadius: BorderRadius.circular(20),
                                            ),
                                            child:  Center(child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                
 Icon(Icons.compare_outlined,size: 30,color: Color.fromRGBO(40, 69, 160, 1), ),
                                                Text(LocaleKeys.Complaint_text.tr()),
                                              ],
                                            )),),
                                        ),
                                      ),
                                         InkWell(
                                           onTap: (){
                                                                                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Suggestion()),
  );
                                           },
                                           child: Card(
                                             elevation: 10,
                                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                             child: Container(
                                       margin: EdgeInsets.only(top:5),
                                        height: 140,
                                        width: 160,
                                        decoration: BoxDecoration(border: Border.all(),
                                        borderRadius: BorderRadius.circular(20),
                                        ),
                                        child:  Center(child: Column(

                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                Icon(Icons.speaker_group,size: 30,color: Color.fromRGBO(40, 69, 160, 1), ),
                                              Text(LocaleKeys.Suggestions_text.tr()),
                                            ],
                                        )),),
                                           ),
                                         ),
                                    ],
                                  ),
                                ],
                              ),
                         ),
                        
                      
                  Container(
   margin: EdgeInsets.fromLTRB(60, 840, 60, 30),
  height: 50,
  width: 250,
  decoration: BoxDecoration(
        color: Color.fromRGBO(40, 69, 160, 1), borderRadius: BorderRadius.circular(20)),
  child: FlatButton(
      onPressed: (){
Navigator.push(
          context, MaterialPageRoute(builder: (_) => MyApp()));

      },
      child: Text(
        
        LocaleKeys.Logout_text.tr(),
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
  ),
),
                  
                 ]),
                          ),
             ),
           ),
         
      );
    
  }
  
void _settingModalBottomSheet(){
    showModalBottomSheet(
      context: context,
    isScrollControlled: true,
     shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(50.0)),
        ),
      builder: (BuildContext bc){
          return SingleChildScrollView(
                      child: Container(
                        decoration: new BoxDecoration(
                        
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(70.0),
                            topRight: const Radius.circular(70.0))),
              height: 450,
              child: new Column(
              children: <Widget>[
Stack(children: [
  Container(
  
    height: 200,
    decoration: BoxDecoration(color:  Colors.white.withOpacity(0)),
      ), Container(
      margin: EdgeInsets.fromLTRB(100, 10, 0, 0),
height: 120,
width:150,
      
    ),
    Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.fromLTRB(40, 40, 0, 0),
      child:Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
             width: 150,
           height: 150,
           decoration: BoxDecoration(
           
        image: DecorationImage(
          image: AssetImage(
              'assets/images/dp.png'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),
          ),
        ],
      )),
                    Container(
              margin: EdgeInsets.fromLTRB(0, 210, 0, 0),
              child: Padding(
   padding: EdgeInsets.all(10),
   child: ListTile(
    
     title:  Card(child: Row(
       children: [
         Container (
           width: 25,
           height: 25,
           decoration: BoxDecoration(
           
        image: DecorationImage(
          image: AssetImage(
              'assets/images/logo.png'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),),
         Container(
           margin: EdgeInsets.only(left: 20),
           child: Text("Name: Ali Ahmed Khan",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
       ],
     ))),)
 
            ),
                        Container(
              margin: EdgeInsets.fromLTRB(0, 240, 0, 0),
              child: Padding(
   padding: EdgeInsets.all(10),
   child: ListTile(
    
     title:  Card(child: Row(
       children: [
         Container (
           width: 25,
           height: 25,
           decoration: BoxDecoration(
           
        image: DecorationImage(
          image: AssetImage(
              'assets/images/logo.png'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),),
         Container(
           margin: EdgeInsets.only(left: 20),
           child: Text("Current Course : Computer Literacy",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
       ],
     ))),)
 
            ),
                          Container(
              margin: EdgeInsets.fromLTRB(0, 270, 0, 0),
              child: Padding(
   padding: EdgeInsets.all(10),
   child: ListTile(
    
     title:  Card(child: Row(
       children: [
         Container (
           width: 25,
           height: 25,
           decoration: BoxDecoration(
           
        image: DecorationImage(
          image: AssetImage(
              'assets/images/logo.png'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),),
         Container(
           margin: EdgeInsets.only(left: 20),
           child: Text("Designation : Computer Operator",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
       ],
     ))),)
 
            ),
                       Container(
              margin: EdgeInsets.fromLTRB(0, 300, 0, 0),
              child: Padding(
   padding: EdgeInsets.all(10),
   child: ListTile(
    
     title:  Card(child: Row(
       children: [
         Container (
           width: 25,
           height: 25,
           decoration: BoxDecoration(
           
        image: DecorationImage(
          image: AssetImage(
              'assets/images/logo.png'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),),
         Container(
           margin: EdgeInsets.only(left: 20),
           child: Text("Rank: 16",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
       ],
     ))),)
 
            ),
             Container(
              margin: EdgeInsets.fromLTRB(0, 330, 0, 0),
              child: Padding(
   padding: EdgeInsets.all(10),
   child: ListTile(
    
     title:  Card(child: Row(
       children: [
         Container (
           width: 25,
           height: 25,
           decoration: BoxDecoration(
           
        image: DecorationImage(
          image: AssetImage(
              'assets/images/logo.png'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),),
         Container(
           margin: EdgeInsets.only(left: 20),
           child: Text("Posting: CPO, Karachi.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
       ],
     ))),)
 
            ),
],)
              ],
            ),
            ),
          );  
             }
    );
}
}
