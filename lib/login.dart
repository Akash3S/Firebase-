import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final user=FirebaseAuth.instance.currentUser;
  signout()async{
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('login'),),
      body: Center(
        child: Text ('${user!.email}'),
      ),
        floatingActionButton: FloatingActionButton
          (onPressed:(()=>signout()),
          child: Icon(Icons.login_rounded),),
    );
  }
}