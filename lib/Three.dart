import 'package:flutter/material.dart';

class Three extends StatelessWidget {
  const Three({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
         alignment: Alignment.center,
        height: 200,
        width: 200,
        color: Color.fromARGB(255, 87, 231, 20),
        child: Text("MR Mostakim",style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
        )),
      ),
    );
  }
}