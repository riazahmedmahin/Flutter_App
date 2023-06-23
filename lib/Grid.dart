import 'package:flutter/material.dart';

class GList extends StatelessWidget {
  const GList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Guird View"),backgroundColor: Colors.cyan,
      ),

      body: Container(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(children: [
          InkWell(
            onTap: (){

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home,size: 50,color: Colors.white,),
                  Text("Home",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search,size: 50,color: Colors.white,),
                  Text("Search",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.settings,size: 50,color: Colors.white,),
                  Text("Settings",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.book,size: 50,color: Colors.white,),
                  Text("Books",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),
            ),
          ),
        ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
        ),
      ),),

    );
  }
}
