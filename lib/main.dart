import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeActivity());
  }
}


class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});


  MySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message),));

  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("App Bar"),
        titleSpacing: 10,

        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context)
            {
              return Scaffold(
                appBar: AppBar(title: Text("hello"),),
              );
            }));
          }, icon: Icon(Icons.account_circle)),
          IconButton(onPressed: () {MySnackBar("I am a search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {MySnackBar("I am a settings", context);}, icon: Icon(Icons.settings))
        ],

      ),


drawer: Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,

        ),
        child: Text("Drawer ",style: TextStyle(color: Colors.black,fontSize: 24),),
      ),

      ListTile(
        leading: Icon(Icons.message),
        title: Text("Message"),
      ),
      ListTile(
        leading: Icon(Icons.account_circle),
        title: Text("Profile"),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("Settings"),
      )

    ],
  ),

),




floatingActionButton: FloatingActionButton(
  elevation: 10,
  onPressed: () {
    Icon(Icons.add);
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context  )
            {

              return MaterialApp(
                home: DefaultTabController(
                  length: 2,
                    child: Scaffold(
                      appBar: AppBar(
                        title: Text("Tab 2"),
                        bottom: TabBar(

                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(50), // Creates border
                              color: Colors.greenAccent),

                          tabs: [
                            Tab(icon: Icon(Icons.airplanemode_active),text: "tab 1",),
                            Tab(icon: Icon(Icons.camera_alt),text: "carema",),
                            Tab(icon: Icon(Icons.account_circle),text: "profile",)

                          ],
                        ),
                      ),
                    ),
                ),
              );

            },


    )
    );
    },

child: Icon(Icons.add_circle_outlined),

),





    );

  }
}

