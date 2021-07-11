import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:police_training/translations/locale_keys.g.dart';

class Contact extends StatefulWidget {
  //const Contact({ Key? key }) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  var price=["Ahmed Ali","Shahzaib ","Jameel","Sufiyan","Saaim ","Umair","Khalid","Romaan"];
  var name=["0332-7532464","0332-7532464","0332-7532464","0332-7532464","0332-7532464","0332-7532464","0332-7532464","0332-7532464"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
    
  
    (
backgroundColor: Color.fromRGBO(40, 69, 160, 1),      centerTitle: true,
      title: Text("Contact List",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
      
      ),
      body: ListView.builder(
  itemCount: 8,
  itemBuilder: (context, index) {
    return InkWell(

      onTap: (){
       
      },
          child: Card(
        
        elevation: 10,
            child: 
           Stack(
                      children:[InkWell(
                        onTap: (){
                          
                        },
                                            child: Container(
               margin: EdgeInsets.fromLTRB(20, 18,220, 0),
               height: 100,
               width: 100,
               
               

                         child:InkWell(
                           onTap: (){
                            
                           },
                                                  child: Container(
                             margin: EdgeInsets.fromLTRB(20, 00, 0, 0),
width: 40,
height: 20,
decoration: BoxDecoration(
           
        image: DecorationImage(
          image: AssetImage(
              'assets/images/dp.png'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),
                           ),
                         ),
                         
                     
                   ),
                      ),
                   Container(
                         margin: EdgeInsets.fromLTRB(170, 50, 0, 10),
                         child: Text(LocaleKeys.name_text.tr(),style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
                         
                         ),
                       ),
                    
                      Container(
                        margin: EdgeInsets.fromLTRB(180, 85, 0, 0),
                        child: Text(name[index],style: TextStyle(color: Colors.grey,fontSize: 15,),
                     
                     ),
                      ),
                   
                    
                     
                      Column(
                        children: [
                          Container(
                            
                            decoration: BoxDecoration(
          color: Color.fromRGBO(40, 69, 160, 1), borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.fromLTRB(260, 110, 0, 0),
                            child: 
                              
                                FlatButton(
                                  child: Text(LocaleKeys.Contact_List_text.tr(),style: TextStyle(color: Colors.white,fontSize: 15),
                     
                     ),
                     
                                ),
                                
                              
                          ),
                          SizedBox(height: 10,)
                        ],
                      ),
                   
                 
                      ]),
                        ),
    );
  },
)
      
    );
  }
}