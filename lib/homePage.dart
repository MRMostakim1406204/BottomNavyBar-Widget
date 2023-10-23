import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:bottomnavvybar_widget/One.dart';
import 'package:bottomnavvybar_widget/Three.dart';
import 'package:bottomnavvybar_widget/Two.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 int _currentindex =0;

 Widget _pages(int index){
   if(index ==0){
    return One();
   }
   else if (index ==1){
    return Two();
   }else {
    return Three();
   }
   
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavvyBar"),
        centerTitle: true,
      ),
      body: _pages(_currentindex),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentindex,
        backgroundColor: Colors.deepOrange,
        items: [
          BottomNavyBarItem(icon: Icon(Icons.home), title: Text("Home"),
          activeColor: Colors.black,inactiveColor: Color.fromARGB(255, 87, 231, 20)),
          BottomNavyBarItem(icon: Icon(Icons.chat), title: Text("Chat"),
          activeColor: Colors.black,inactiveColor: Color.fromARGB(255, 87, 231, 20)),
          BottomNavyBarItem(icon: Icon(Icons.person), title: Text("Person"),
          activeColor: Colors.black,inactiveColor: Color.fromARGB(255, 87, 231, 20)),
          ], 
        onItemSelected: (int value){
          setState(() {
            _currentindex =value;
          });
        }),
    );
  }
}