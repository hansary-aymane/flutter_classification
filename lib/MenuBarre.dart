import 'package:flutter_classification/loadimage.dart';
import 'package:flutter_classification/loadimage2.dart';
import 'package:flutter_classification/main.dart';
import 'package:flutter_classification/myhomepage.dart';
import 'package:flutter/material.dart';

class MenuBarre extends StatelessWidget {
  const MenuBarre({Key? key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey,
      child: ListView(
        children: [const DrawerHeader(decoration: BoxDecoration(gradient: LinearGradient(colors:[Colors.black,Colors.grey])),
          child:CircleAvatar(backgroundImage: AssetImage('assets/ai.jpg'),),
        ),
        Column(
          children: [
            ListTile(title: Text('Home'),leading: Icon(Icons.home),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => const MyApp(),));
            },),
            ExpansionTile(title: const Text('Chose algorithme'),leading: const Icon(Icons.settings),
            children: [
              ListTile(title: Text('Fashion Mnist'),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoadImage2()));
              } ,),
              ListTile(title: Text('Waste Classification'),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoadImage()));
              } ,)
            ],)
          ],
        )
        ],
      ),
    );
  }
}