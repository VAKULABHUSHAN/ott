import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ott/Netflix%20Movie%20Page.dart';


class mlp extends StatefulWidget {
  const mlp({super.key});

  @override
  State<mlp> createState() => _mlpState();
}

class _mlpState extends State<mlp> {

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

  final List mwimage=[
    "https://cdn1.epicgames.com/salesEvent/salesEvent/725818d8-9768-4a6a-a723-3039aaee1e23_1200x1600-3b6116d3fc1b566b71251d04bce27938",
    "https://cdn.europosters.eu/image/350/posters/the-legend-of-zelda-tears-of-the-kingdom-hyrule-skies-i174296.jpg",
    "https://cdn.europosters.eu/image/350/posters/assassin-s-creed-valhalla-eivor-i96339.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI4D97Q2exXD76LieoPNexn72JrrmcCdZKgrF-yskgJA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgTJlGUYMH-cwmi9E5HaKv2kKaUP7-C9sep5Ej6HgOJw&s",

  ];
  final List mwimagetext=[
    "Farming Stimulator 2023 \n Download Now",
    "Air Force Battle 2.0 \n Download Now",
    "Battle Forces \n Download Now",
    "Attack Of Titans \n Download Now ",
    "Future Alien \n Download Now",
  ];

  final List tkl=[
    "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQb9x6r8qAbUhd6gZHjmCVVeGfC05PBzG9vkJ07bvCt_pCTsBq842sRKIAivUmqGPed3-89FU6J4jwf9hSr9ViLb1HKkqS945IodAjYZZA1kIucWj7Ia7sIh1J4cM3htp0i0aG858Bcu98EoNQp9rw5FN.jpg?r=2db",
    "https://pbs.twimg.com/media/F-T3EGjWYAAyrZ9.jpg:large",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyhCzAOiYM1z-Sj0a1AzwYYd2wrptYOxiHclLAU9j7aQ&s",
    "https://i.pinimg.com/736x/13/0d/82/130d82c527c0bd99ee5b4904049f8d59.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeBOE_erdNVb_Tb1SBgvg9sOnyBJciRmCcOTUS4XuzRg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY59KPlS4uQ51PfXs-Lca86mzrFVsEX0OtdA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTamf9xZ-JhabV3Qheq6MBIxVP-F8uDpvvkjg&s",
    "https://i.redd.it/netflix-style-control-movie-poster-v0-w74z0fqjl8la1.jpg?width=1448&format=pjpg&auto=webp&s=56c10f018ab9b795028ccd0ebbb49095a341a97e",
 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxAfM_LKFhSc_bsKGyL0HARwBK4ugk_8C0Nw&s",
  ];

  final List  image33 =[
    "https://images.mid-day.com/images/images/2021/jul/HOME-APPLI_d.jpg",
    "https://st3.depositphotos.com/9747634/32010/i/450/depositphotos_320104748-stock-photo-hangers-with-different-clothes-in.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEB0JXiwmxO6_sP0cveK4_JFJrcCxAZoem475JmwFg0g&s",
    "https://cdn.firstcry.com/education/2022/11/06094158/Toy-Names-For-Kids.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiW3HaSM4PAsb-rKDiKBtdKznMUgJH0kQZ3rCa4zViiw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqOLZlXHEvihw3aXLhUAQu6M94ppvBYK7vym2xsHP1QA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSomlNlaBwAjgMZpB-TFMhUJP3zsGsfXux6Sg&s",
  ];

  final List fgi = [
    "assets/img_6.png",
    "assets/img_14.png",
    "assets/img_15.png",
    "assets/img_16.png",
    "assets/img_17.png",
    "assets/img_18.png",
    "assets/img_2.png",
    "assets/img_1.png",
    "assets/img_3.png",
    "assets/img_4.png",
    "assets/img_5.png",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.red,)
        ),
        title:Text("📃MY LIST📃",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.red),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(alignment: Alignment.bottomLeft,
                          child: Text("Continew Watching.....",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red),)),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recently Watched ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.red),
                ),
                Text(
                  "My List>",
                  style: TextStyle(
                      fontSize: 25,
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
                  "My Favorite ❤",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.red),
                ),
                Text(
                  "My List>",
                  style: TextStyle(
                      fontSize: 25,
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
                }),
            Align(alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("ad",style: TextStyle(fontSize: 25,color: Colors.red),),
                        ),
                     Icon(Icons.video_library_rounded,color: Colors.red),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Download Now ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red),
                        ),
                        Icon(Icons.download,color: Colors.red),
                      ],
                    )
                  ],
                )
            ),
            Container(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: mwimage.length,
                  itemBuilder:(BuildContext con, index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/11,
                              width: MediaQuery.of(context).size.width/5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(mwimage[index]),fit: BoxFit.fill
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(mwimagetext[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),),
                            ),
                          ],
                        ),
                        color: Colors.white30,
                      ),


                    );
                  }
              ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "⏰Time Killer⏰ ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.red),
                ),
                Text(
                  "My List>",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.red),
                ),
              ],
            ),
            GestureDetector(
                child: Container(
                  height: 164,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tkl.length,
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
                                      image: NetworkImage(tkl[index]),
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
                  "🛒Shop Now 🛒 ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.red),
                ),
                Text(
                  "ad",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.red),
                ),
              ],
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16/9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
              ),
              itemCount: image33.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:NetworkImage(image33[index]),
                      fit: BoxFit.fill,),
                    borderRadius: BorderRadius.circular(20),
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Weekend vibezz... ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.red),
                ),
                Text(
                  "My List>",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.red),
                ),
              ],
            ),
            GestureDetector(
                child: Container(
                  height: 164,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: fgi.length,
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
                                      image: AssetImage(fgi[index]),
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
