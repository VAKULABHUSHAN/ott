import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ott/Netflix%20Movie%20Page.dart';
import 'package:ott/Netflix%20botnaiv.dart';
import 'package:ott/categories.dart';
import 'package:ott/netflix%20home%20page.dart';

class asdf extends StatefulWidget {
  const asdf({super.key});

  @override
  State<asdf> createState() => _nmpState();
}

class _nmpState extends State<asdf> {
  final List tvimage = [
    "https://resizing.flixster.com/g81COrwvWE7pqUEIVL0271ZsFT4=/ems.cHJkLWVtcy1hc3NldHMvdHZzZXJpZXMvMjVhYWZjMGMtY2I4MS00ZWE2LWE5NTEtNTVlZDRjMDE3ZGU1LmpwZw==",
  "https://www.tallengestore.com/cdn/shop/products/QGM6_1_c34d7d64-85a1-412d-ad5f-18e2b38ee366.jpg?v=1623075171",
  "https://images.ctfassets.net/4cd45et68cgf/4g2KWWsb3asC3VQVYS2eSs/3d1520b9ef5dac16f7ee6b06da3b3e73/DE_1899S1_Main_Vertical_27x40_RGB_PRE.jpg?w=2000",
    "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQdttJvszpXZZDRBx6bLQprJt918HrS1MGOej3W88GrkfOeL-kUJn66TfXKYxd1B7r3ZDxo2Wlo-FjgzFUvSNrR9FRSrUq-aW0Jzip6mBrJvjEm7pVt72u_XErbyxZZ5RJNJpnOdy_3z2VabskP99G_ie.jpg?r=93e",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLBw412fTKUftdI5ZyTsDHaxv4sA-PzoKS4IIUVZ40pg&s",
    "https://www.indiewire.com/wp-content/uploads/2017/09/imperial-dreams-2014.jpg?w=426",
    "https://oyster.ignimgs.com/wordpress/stg.ign.com/2016/11/netflix-lemony-snicket-unfortunate-eventes-poster.jpg",
    "https://www.indiewire.com/wp-content/uploads/2017/09/barry-2016.jpg?w=675",
    "https://i.pinimg.com/550x/cb/17/8e/cb178e17efc3d298f06b14a705fe3874.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgwWl5CKQcx4KL4D3MBxn90Q9cs1A6_IK2l5Ly87dbjw&s",
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
        title: Center(child: Text("TV Shows",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.red),)),
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 18,
                          width: MediaQuery.of(context).size.width / 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.red)),
                          child: Center(
                              child: Text(
                                "X",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              )),
                        ),
                      ),
                    ),
                    onTap: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => botnavi(),
                        ),
                      );
                    }
                    ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 18,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.red)),
                    child: Center(
                        child:   GestureDetector(
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
                    ),
                  ),
                ),
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
                            image: NetworkImage('https://m.media-amazon.com/images/I/81mIVtv05TL._AC_UF1000,1000_QL80_.jpg'),
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
                      }
                  ),
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
                                  color: Colors.white),
                            )),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                child: Container(
                                  height: MediaQuery.of(context).size.height / 20,
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
                  "TV Shows",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                Text(
                  "My List>",
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
                                      image: NetworkImage(tvimage[index]),
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
                }
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tamil TV Shows",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                Text(
                  "My List>",
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
                }

            ),
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
                                      image: NetworkImage(tvimage[index]),
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
                }
            ),
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
                }
            ),
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
                                      image: NetworkImage(tvimage[index]),
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
                }
            ),
          ],
        ),
      ),
    );
  }
}
