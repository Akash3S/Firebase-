import 'package:akashflutter/Screens/dashboard/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: ()  {
             showDialog(context: context, builder: (context){
           return Container(
           child: AlertDialog(title: Text('Create new Workspace'),
             content: TextField(
               onChanged:( value ){},
               decoration: InputDecoration(
                 hintText: "Workspace name"
               ),
             ),
             actions: [
               TextButton(
               onPressed: ()  {
                 Navigator.pop(context);
               },
             child: const Text("Cancle", style: TextStyle(color: Colors.black)
             ),
               ),
               TextButton(
               onPressed: ()  {},
               child: const Text("OK", style: TextStyle(color: Colors.black)),
               )
               ],
           ),
           );
             });
            },
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
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: Text('Settings Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: Text('Account Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class DownloadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: Text('Download Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: Text('Menu Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: Text('Notification Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class Crm extends StatefulWidget{
  @override
  State<Crm> createState() => _CrmState();
}

class _CrmState extends State<Crm> {
  final TextEditingController search = TextEditingController();
  int index = 0;
  final List<Widget> _pages = [
    HomePage(),
    SettingsPage(),
    AccountPage(),
    DownloadPage(),
    MenuPage(),
    NotificationPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:  AppBar(title: Text('CRM'),),
      body: Row(
        children: [

          NavigationRail(
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text('Settings'),
              ), NavigationRailDestination(
                icon: Icon(Icons.account_circle),
                label: Text('Account'),
              ), NavigationRailDestination(
                icon: Icon(Icons.save_alt),
                label: Text('Download'),
              ), NavigationRailDestination(
                icon: Icon(Icons.line_weight_sharp),
                label: Text('menu'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.add_alert_sharp),
                label: Text('Notification'),
              )
            ], selectedIndex: index,
            backgroundColor: Colors.grey,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: _pages[index],
              color: Colors.greenAccent,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(

             child:  AppBar(title: Text('CRM',style: TextStyle(color: Colors.blue),),

               actions: [
                 Padding(
                   padding: const EdgeInsets.all(8),
                   child: SearchBar(
                     hintText: 'Search',

                   ),
                 ),
                 IconButton(onPressed: (){}, icon: Icon(Icons.notification_add)),
                 SizedBox(width: 50,),
                 IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
                 SizedBox(width:30 ,),
                 IconButton(onPressed: (){}, icon: Icon(Icons.account_circle)),

               ],
             ),
            ),
          )
        ],
      ),
    );
  }



}

