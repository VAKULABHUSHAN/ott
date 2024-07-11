import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ott/Netflix%20Movie%20Page.dart';
import 'package:ott/TVshows.dart';
import 'package:ott/categories.dart';
import 'package:ott/movies.dart';
import 'package:ott/mylist.dart';

class nhp extends StatefulWidget {
  const nhp({super.key});

  @override
  State<nhp> createState() => _nmpState();
}

class _nmpState extends State<nhp> {
  final List tvimage = [
    "assets/img_2.png",
    "assets/img_1.png",
    "assets/img_3.png",
    "assets/img_4.png",
    "assets/img_5.png",
    "assets/img_6.png",
    "assets/img_14.png",
    "assets/img_15.png",
    "assets/img_16.png",
    "assets/img_17.png",
    "assets/img_18.png",
  ];

  final List tsimage22 = [
    "assets/img_7.png",
    "assets/img_8.png",
    "assets/img_9.png",
    "assets/img_10.png",
    "assets/img_11.png",
    "assets/img_12.png",
    "assets/img_13.png",
  ];
  final List tmimage = [
    "assets/img_14.png",
    "assets/img_15.png",
    "assets/img_16.png",
    "assets/img_17.png",
    "assets/img_18.png",
  ];

  final List mwimage = [
    "assets/img_2.png",
    "assets/img_1.png",
    "assets/img_3.png",
    "assets/img_15.png",
    "assets/img_16.png",
    "assets/img_17.png",
    "assets/img_7.png",
    "assets/img_8.png",
    "assets/img_9.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image(
          image: AssetImage("assets/img.png"),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.red,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.red)),
                      child: Center(
                          child: Text(
                        "TV Shows ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      )),
                    ),
                    onTap: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => asdf(),
                        ),
                      );
                    }),
                GestureDetector(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.red)),
                      child: Center(
                          child: Text(
                        "Movies ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      )),
                    ),
                    onTap: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => movies(),
                        ),
                      );
                    }),
                GestureDetector(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.red)),
                      child: Center(
                          child: Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      )),
                    ),
                    onTap: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => cat(),
                        ),
                      );
                    }),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Stack(children: [
                  GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width / 1.25,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/img_1.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      onTap: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => nmp(),
                          ),
                        );
                      }),
                  Positioned(
                    bottom: 10,
                    child: Column(
                      children: [
                        Center(
                            child: Text(
                          "Mystery·Fantacy·Adventure·Science Fiction",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        )),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "▶ Play ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                onTap: () async {
                                  final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => nmp(),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                child: Container(
                                  height: MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "+ My List",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                                ),
                                onTap: () async {
                                  final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => mlp(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "TV Series",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                GestureDetector(
                  child: Center(
                      child: Text(
                        " My List>>",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      )),
                  onTap: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => mlp(),
                      ),
                    );
                  },
                ),
              ],
            ),
            GestureDetector(
                child: Container(
                  height: 164,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tvimage.length,
                      itemBuilder: (BuildContext con, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 10,
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(tvimage[index]),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => nmp(),
                    ),
                  );
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tamil Series",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                GestureDetector(
                  child: Center(
                      child: Text(
                        " My List>>",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      )),
                  onTap: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => mlp(),
                      ),
                    );
                  },
                ),
              ],
            ),
            GestureDetector(
                child: Container(
                  height: 164,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tsimage22.length,
                      itemBuilder: (BuildContext con, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 10,
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(tsimage22[index]),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => nmp(),
                    ),
                  );
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Trending 🔥",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ],
            ),
            GestureDetector(
                child: Container(
                  height: 164,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tvimage.length,
                      itemBuilder: (BuildContext con, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 10,
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(tvimage[index]),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => nmp(),
                    ),
                  );
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "South Indian ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ],
            ),
            GestureDetector(
                child: Container(
                  height: 164,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tmimage.length,
                      itemBuilder: (BuildContext con, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 10,
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(tmimage[index]),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => nmp(),
                    ),
                  );
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Must Watch ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ],
            ),
            GestureDetector(
                child: Container(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: mwimage.length,
                      itemBuilder: (BuildContext con, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 11,
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(mwimage[index]),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => nmp(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
