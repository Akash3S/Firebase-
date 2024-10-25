import 'package:akashflutter/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(
          aspectRatio: 16/9,
          child: Profile()),
    );
  }

}