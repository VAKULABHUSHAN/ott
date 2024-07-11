import 'package:flutter/material.dart';


class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "hello",
            style:
            TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w200,
                fontStyle: FontStyle.italic,
                backgroundColor: Colors.yellow,
                color: Colors.red
            ),
          ),
          Container(
            height: 554,
            width: 654,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors:
                  [
                    Colors.blue,
                    Colors.red,
                    Colors.greenAccent,
                    Colors.yellow,
                  ]
              )
            ),
            child: Text("asdfghj",style: TextStyle(fontWeight: FontWeight.bold,fontSize:44),)
          )
        ],
      ),
    );
  }
}
