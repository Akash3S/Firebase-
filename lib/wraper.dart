import 'package:akashflutter/login.dart';
import 'package:akashflutter/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wraper extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(

body: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context,snapshot){
      if(snapshot.hasData){
        return Login();
      } else{
        return Profile();
      }
    }),
  );
  }

}