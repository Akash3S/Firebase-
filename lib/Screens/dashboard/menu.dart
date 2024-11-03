import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget{
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       child: Column(
         children: [
           TextButton(
             onPressed: ()  {},
             child: const Text("One", style: TextStyle(color: Colors.black)),
           ),
           TextButton(
             onPressed: ()  {},
             child: const Text("Two", style: TextStyle(color: Colors.black)),
           ),TextButton(
             onPressed: ()  {},
             child: const Text("Three", style: TextStyle(color: Colors.black)),
           ),TextButton(
             onPressed: ()  {},
             child: const Text("Four", style: TextStyle(color: Colors.black)),
           ),TextButton(
             onPressed: ()  {},
             child: const Text("Five", style: TextStyle(color: Colors.black)),
           ),
         ],
       ),
     ),

   );
  }
}