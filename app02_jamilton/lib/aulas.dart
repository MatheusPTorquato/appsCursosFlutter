import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      title: "Frases do dia",
      /*home: Column(children: <Widget>[
      Text("User"),
      Text("Senha"),
    ],),*/
      home: Container(
        //color: Colors.white,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.white)
        ),
        child: const Row(
          children: <Widget>[
            Text("Texto")
          ],
        ),
      )
      //home: Container(color: Colors.white,),
      ));
}
