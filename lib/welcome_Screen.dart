import 'package:flutter/material.dart';
import 'package:mine_app/main.dart';
import 'package:mine_app/src/constants/colors.dart';
import 'package:mine_app/src/constants/images.dart';

class Welcome_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(

      body: Container(
        color: tapp_color,
        height: height,
        width: width,

        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset(applogo_bluebg ,height: height*0.2,),
            ),

            Text('RAILEASE',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500), ),
            Text('Railway Concession Automation at VESIT',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500), ),
            SizedBox(height: height*0.05),
            Text('WELCOME',style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),  ),

            Text('Student',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400), ),
            SizedBox(height: 65,),
            Text('Please Kindly Login or SignUp on the App',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
            SizedBox(height: height*0.2,),
            Row(
              children: [
                SizedBox(width: width*0.1,),
                Expanded(child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
                }, child: Text('LOGIN'),style: ElevatedButton.styleFrom(
                  side: BorderSide(color: tAppbar_color),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),)),
                SizedBox(width: width*0.05,),
                Expanded(child: OutlinedButton(onPressed: (){}, child: Text('SIGNUP'),
                  style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),)),
                SizedBox(width: width*0.1,),

              ],
            )

                ],
              ),



        
      ),
    );
  }
}