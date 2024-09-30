import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title:Text("signup"),),
     body: Center(child: Text('signup here',style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color:Colors.blue), )),

   );
  }

}