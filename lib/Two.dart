import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 200,
        width: 200,
        color: Colors.deepOrange,
        child: Text("MR Mostakim",style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
        )),
      ),
    );
  }
}