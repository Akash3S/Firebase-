import 'package:akashflutter/Screens/desktopscreen.dart';
import 'package:akashflutter/Screens/largepage.dart';
import 'package:akashflutter/Screens/responsive_layout.dart';
import 'package:akashflutter/firebase_options.dart';
import 'package:akashflutter/profile.dart';
import 'package:akashflutter/wraper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp( const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Wraper(),
    );
  }
}
