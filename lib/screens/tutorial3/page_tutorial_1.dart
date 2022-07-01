import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Page_tutorial_1 extends StatelessWidget {
  const Page_tutorial_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor:Colors.tealAccent ,
        body:Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage("assets/images/background.png"),
                fit:BoxFit.cover,

              )


          ),
            child:Column(

            mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    
                    radius: 20.0,
                    backgroundImage: AssetImage("assets/images/logo5.png"),
                  ),
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("assets/images/image2_tutorial.png"),
                  ),
                  Text('Bem-Vindo(a) á UniSpirit,',
                    textAlign: TextAlign.center,
                    style:  TextStyle(fontFamily: 'MuseoModerno',
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                  ),
                  Text('a primeira rede social exclusiva para estudantes do ensino superior',
                      textAlign: TextAlign.center,
                      style:  TextStyle(fontFamily: 'MuseoModerno',

                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))
                ],
            )


        ),
      ),

    );
  }
}


