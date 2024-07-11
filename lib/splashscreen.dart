import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ott/login%20page.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>loginpage(),
        ),
      );
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/1,
              width:  MediaQuery.of(context).size.width/1,
              decoration: BoxDecoration(
              image: DecorationImage(
                image  : NetworkImage("https://cdn.dribbble.com/users/9378043/screenshots/16832559/netflix__1_.png"),
                fit: BoxFit.fill,
              )
          ),),
      ]),
    );






  }
}