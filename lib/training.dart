import 'package:flutter/material.dart';
import 'package:police_training/detailx.dart';
import 'package:police_training/model/category.dart';
import 'package:police_training/model/category.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:police_training/syllabus.dart';
import 'package:police_training/video.dart';

import 'course.dart';
import 'leaves.dart';
import 'notice.dart';
class Training extends StatefulWidget {
  //const Training({ Key? key }) : super(key: key);

  @override
  _TrainingState createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
    List<String> images = [  
  "Artificial Intelligence","Blockchain","Computer Literacy","Cloud Computing","Machine Learning","Statistics"
  ];  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar
    
  
    (
      backgroundColor: Color.fromRGBO(40, 69, 160, 1),
      centerTitle: true,
      title: Text("Completed Courses History",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
      
      ),
      body:                    
                   SingleChildScrollView(
                     child: Container(  
                     height: 1000,
                        padding: EdgeInsets.all(12.0),  
                        
                          child: Container(
                              margin: EdgeInsets.only(top:10),
                              child: GridView.builder(  
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: images.length,  
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                                  childAspectRatio: 2/1.5,
                                    crossAxisCount: 2,  
                                    crossAxisSpacing: 12.0,  
                                    mainAxisSpacing: 20.0  
                                ), 
                                  itemBuilder: (BuildContext context, int index){  
                                  return InkWell(
                                    onTap: (){
                                       if(images[index]=="Artificial Intelligence"){

                                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailsScreen()),
  );
                                       }
                                       if(images[index]=="Blockchain"){

                                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailsScreen()),
  );
                                       }
                                       if(images[index]=="Computer Literacy"){

                                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailsScreen()),
  );
                                       }
                                       if(images[index]=="Machine Learning"){

                                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailsScreen()),
  );
                                       }
                                       if(images[index]=="Cloud Computing"){

                                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailsScreen()),
  );
                                       }


if(images[index]=="Statistics"){

                                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailsScreen()),
  );
                                       }                                     
                                    },
                                                                    child: Card(
                                      elevation: 8,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                                child: Container(
                                        //height: 900,
                                          decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white),
                                          
                                          child: Center(child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,

                                            children: [
                                              if(images[index]=="Course Outline")
Icon(Icons.leaderboard,size: 30,color: Colors.green,),
 if(images[index]=="Syllabus")
 Icon(Icons.library_books_outlined,size: 30,color: Colors.red.withOpacity(0.8),),
  if(images[index]=="Videos")
 Icon(Icons.video_library,size: 30,color: Colors.blue.withOpacity(1),),
  if(images[index]=="Notice Board")
 Icon(Icons.notification_important,size: 30,color: Color.fromRGBO(40, 69, 160, 1), ),
 if(images[index]=="Leaves")
 Icon(Icons.workspaces_filled,size: 30,color: Color.fromRGBO(40, 69, 160, 1), ),
 if(images[index]=="Training History")
 Icon(Icons.history,size: 30,color: Color.fromRGBO(40, 69, 160, 1), ),
                                              
                                              
                                              Text(images[index],style: TextStyle(fontSize: 15,color: Colors.black,),),
                                            ],
                                          ),),
                                      ),
                                    ),
                                  );  
                                },  
                              ),
                          ),
                        ),
                   ),
    );
        
  }
}