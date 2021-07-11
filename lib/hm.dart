import 'package:flutter/material.dart';

import 'dashboard.dart';
class Hm extends StatefulWidget {
  //const Hm({ Key? key }) : super(key: key);

  @override
  _HmState createState() => _HmState();
}

class _HmState extends State<Hm> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(

          height: double.infinity,
          decoration: BoxDecoration(

            color: Colors.white,
        ),
          child:Stack(children: [
          
          Container(
            margin: EdgeInsets.fromLTRB(90, 90, 90, 0),
            width: 170,
          height: 170,
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [//Text("Supply",style: TextStyle(fontSize: 50,color: Colors.orange,fontWeight: FontWeight.bold),),
Container(
        height: 170.0,
      width: 170.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/logox.png'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),


)],),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 320, 0, 0),
            child: Padding(
   padding: EdgeInsets.all(10),
   child: TextField(
         decoration: InputDecoration(
          
                   suffixIcon: const Icon(
                    Icons.mail,
                    color: Color.fromRGBO(40, 69, 160, 1),
                  ),
           border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
         focusedBorder: OutlineInputBorder(
borderSide: BorderSide(color: Colors.black)
           
         ),
         labelText: 'User Name',hintStyle: TextStyle(color: Colors.grey),labelStyle: TextStyle(color: Colors.black),
         hintText: 'Enter valid mail id as abc@gmail.com'
       ),
   ),
 ),
          ),
 Container(
   margin: EdgeInsets.fromLTRB(0, 390, 0, 0),
   child: Padding(
       padding: EdgeInsets.all(10),
       child: TextField(
           obscureText: true,
           decoration: InputDecoration(
            
                   suffixIcon: const Icon(
                    Icons.phone_locked_sharp,
                    color: Color.fromRGBO(40, 69, 160, 1),
                  ),
              focusedBorder: OutlineInputBorder(
borderSide: BorderSide(color: Colors.black),),
           border: OutlineInputBorder(),
           labelText: 'Password',hintStyle: TextStyle(color: Colors.grey),labelStyle: TextStyle(color: Colors.black),
           hintText: 'Enter your secure password'
         ),
       ),
   ),
 ),
 Container(
   margin: EdgeInsets.fromLTRB(100, 460, 100, 0),
   child: FlatButton(
      onPressed: (){
        //TODO FORGOT PASSWORD SCREEN GOES HERE
      },
      child: Text(
        'Forgot Password',
        style: TextStyle(color: Colors.red.withOpacity(0.8), fontSize: 15),
      ),
),
 ),
 Container(
   margin: EdgeInsets.fromLTRB(60, 520, 60, 0),
  height: 50,
  width: 250,
  decoration: BoxDecoration(
        color: Color.fromRGBO(40, 69, 160, 1), borderRadius: BorderRadius.circular(20)),
  child: FlatButton(
      onPressed: (){
Navigator.push(
          context, MaterialPageRoute(builder: (_) => Dashboard()));

      },
      child: Text(
        'Login',
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
  ),
),

        ]),
        ),
    );
  }
}