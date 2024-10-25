import 'package:akashflutter/SocialButton.dart';
import 'package:akashflutter/forget.dart';
import 'package:akashflutter/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Profile extends StatefulWidget{
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  signIn()async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: password.text);
  }


  @override
  Widget build(BuildContext context) {
 return   Scaffold(

   body:
   SingleChildScrollView(
     child: Padding(
       padding: const EdgeInsets.only(top: 50),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
     
             children: [
               FlutterLogo(
                 size: 50,
               ),
               Spacer(),
               Text("Not a member yet?",style: TextStyle(fontSize:14, color: Colors.grey ),),
               TextButton(onPressed:(()=>Get.to(Signup())),
                   child: Text("join",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),) )
     
             ],
           ),
           SizedBox(height: 30),
     
           Padding(
             padding: const EdgeInsets.only(left: 15),
             child: Text("Log in",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),
           ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(left: 15),
             child: Text("Work mail",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
           ),
           Padding(
             padding: const EdgeInsets.all(15),
             child: TextField(
               controller: email,
               style: TextStyle(fontSize: 18,color: Colors.black),
               decoration: InputDecoration(
                   prefixIcon: Icon(Icons.mail),
                   contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15
                   ),hintText: 'mail',
                   enabledBorder:OutlineInputBorder(
                       borderRadius: BorderRadius.circular(15)
     
                   )
               ),
     
             ),
           ),
           const Padding(
             padding: EdgeInsets.only(left: 10),
             child: Text("Password",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black,),),
           ),
           Padding(
             padding: const EdgeInsets.all(15),
             child: TextField(
               controller: password,
               style: TextStyle(fontSize: 18,color: Colors.black),
               decoration: InputDecoration(
                   prefixIcon: Icon(Icons.password),
                   contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15
                   ),hintText: 'password',
                   enabledBorder:OutlineInputBorder(
                       borderRadius: BorderRadius.circular(15)
     
                   )
               ),
     
             ),
           ),
     
     
             Padding(
               padding: const EdgeInsets.only(left: 15),
               child: TextButton(onPressed:(()=>Get.to(Forget())),
                child: Text("Forget password?" ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),) ),
             ),
           SizedBox(
             width: double.infinity,
             child: Padding(
               padding: const EdgeInsets.all(15),
               child: ElevatedButton(
                 onPressed: (()=>signIn()) ,
                 style:ElevatedButton.styleFrom(
                     backgroundColor: Colors.blue,),
                 child: const Text('login',style: TextStyle(fontSize: 15,color: Colors.white),),
     
     
               ),
             ),
           ),
           SizedBox(height: 20),
      Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
      children: [
      SocialButton(
      text: 'Log in with Google',
      icon: FontAwesomeIcons.google,
      color: Colors.red,
      onPressed: () {},
      width: double.infinity,
      ),
      const SizedBox(height: 10),
      SocialButton(
      text: 'Log in with Microsoft',
      icon: FontAwesomeIcons.microsoft,
      onPressed: () {},
      width: double.infinity,
      ),
      const SizedBox(height: 10),
      SocialButton(
      text: 'Log in with Facebook',
      icon: Icons.facebook_outlined,
      color: Colors.blue,
      onPressed: () {},
      width: double.infinity,
      ),
      const SizedBox(height: 10),
      SocialButton(
      text: 'Log in with Apple',
      icon: Icons.apple,
      color: Colors.black,
      onPressed: () {},
      width: double.infinity,
      ),
      ],
      ),
      ),
           SizedBox(
             width: double.infinity,
               child: ElevatedButton(onPressed: (){},
                   style:ElevatedButton.styleFrom(
                     backgroundColor: Colors.grey.shade300 ),
                   child: Text('Login with Mobile no',style: TextStyle(color: Colors.black),))),
     SizedBox(height: 10,),
     Text('                 Lorem ipsum dolor sit amet.',style: TextStyle(color: Colors.black),),
   Padding(
     padding: const EdgeInsets.only(left: 30),
     child: Container(height: 200,
     width: 300,
       color: Colors.grey.shade300,

     ),
   ),
           Padding(
             padding: const EdgeInsets.all(30),
             child: Text('Lorem ipsum dolor sit amet, consectetur adipicing elit. Set suscipit nunc sit amet elit gravida.'),
           )

     
     ],
       ),
     ),
   ),
 );
  }
}