import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ott/Netflix%20Movie%20Page.dart';
import 'package:ott/netflix%20home%20page.dart';

import 'package:provider/provider.dart';
import 'Modeltheme.dart';

class ott4 extends StatefulWidget {
  const ott4({super.key});

  @override
  State<ott4> createState() => _ott4State();
}

class _ott4State extends State<ott4> {
  @override
  Widget build(BuildContext context) {
    return
      Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child)
          {
            return SafeArea(
              child: Scaffold(
                // backgroundColor: Colors.black87,
                body: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        height: 70,
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => nhp()),
                              );
                            },
                            child: Row(
                              children: [
                                Text(
                                  "MY Profile",
                                  style: TextStyle(color: Colors.blue, fontSize: 30),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 270),
                                  child: Icon(Icons.keyboard_arrow_right),
                                ),
                              ],
                            ))),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        height: 70,
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  "App Settings",
                                  style: TextStyle(color: Colors.blue, fontSize: 30),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 230),
                                  child: Icon(Icons.settings),
                                ),
                              ],
                            ))),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        height: 70,
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  "Privacy",
                                  style: TextStyle(color: Colors.blue, fontSize: 30),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 320),
                                  child: Icon(Icons.privacy_tip),
                                ),
                              ],
                            ))),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        height: 70,
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  "Help",
                                  style: TextStyle(color: Colors.blue, fontSize: 30),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 360),
                                  child: Icon(Icons.help),
                                ),
                              ],
                            ))),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        height: 70,
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => nmp()),
                              );
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Sign out",
                                  style: TextStyle(color: Colors.blue, fontSize: 30),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 300),
                                  child: Icon(Icons.person),
                                ),
                              ],
                            ))),
                    SizedBox(
                      height: 25,
                    ),
                    IconButton(
                      icon: Icon(themeNotifier.isDark
                          ? Icons.wb_sunny
                          : Icons.nightlight_round),
                      onPressed: () {
                        themeNotifier.isDark
                            ? themeNotifier.isDark = false
                            : themeNotifier.isDark = true;
                      },),

                  ],
                ),
              ),
            );
          });
  }
}
