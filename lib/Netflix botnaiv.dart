import 'package:flutter/material.dart';
import 'package:ott/Modeltheme.dart';
import 'package:ott/netflix%20game%20page.dart';
import 'package:ott/netflix%20home%20page.dart';
import 'package:ott/test%202.dart';
import 'package:provider/provider.dart';


class botnavi extends StatefulWidget {
  const botnavi({super.key});

  @override
  State<botnavi> createState() => _botnaviState();
}

class _botnaviState extends State<botnavi> {

  int index=0;

  final pages =[
    nhp(),
    ngp(),
    Profile(),
  ];


  void tap(a)
  {
    setState(() {
      index =a;
    });
  }


  @override
  Widget build(BuildContext context) {
    return
      Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child)
    {
      return Scaffold(
        body: pages[index],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home",),
            BottomNavigationBarItem(
              icon: Icon(Icons.videogame_asset),
              label: "Games",),
            BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "About",),

          ],
          currentIndex: index,
          onTap: tap,
        ),
      );
    }
    );
  }
}
