import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



class ngp extends StatefulWidget {
  const ngp({super.key});

  @override
  State<ngp> createState() => _ngpState();
}

class _ngpState extends State<ngp> {
  late FlickManager flickManager;

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

  final List game =[
    "https://rukminim2.flixcart.com/image/850/1000/kyvvtzk0/poster/k/3/r/medium-red-dead-redemption-video-game-matte-finish-poster-original-imagbygd2yzsqejy.jpeg?q=90&crop=false",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDAyOfYDt8ORZRoPU8zNXSi83U5N-Z3us7-6qTo28KNA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwLALWBKukKqf-v5VdF7cvWLMFXcPec7cuY0BUBFEkuw&s",
    "https://www.posterized.in/cdn/shop/files/game52.jpg?v=1697292231&width=1445",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk86P-juZAEfYFZqbOsvOVVFOBjv8a00APs5uKrk_GHQ&s",
    "https://imgc.allpostersimages.com/img/posters/zelda-breath-of-the-wild_u-L-F8P6BY0.jpg",
    "https://myhotposters.com/cdn/shop/products/mL4252_1024x1024.jpg?v=1583187222",

  ];
  final List gametext=[
    "Red Dead 2.0",
    "PUBG",
    "Free Guy",
    "GTA V",
    "MINECRAFT",
    "ZELDA",
    "DOOM",
  ];

  final List childrengames=[
    "https://i.pinimg.com/474x/67/26/2d/67262dfe3fa206df0b030747a1256fa5.jpg",
    "https://media.kasperskydaily.com/wp-content/uploads/sites/36/2020/04/06195629/best-mobile-games-for-kids-2020-whats-in-space.png",
    "https://is5-ssl.mzstatic.com/image/thumb/Purple122/v4/e3/51/7f/e3517fba-be19-0541-546d-fa231b480e45/pr_source.jpg/750x750bb.jpeg",
    "https://play-lh.googleusercontent.com/PZ36hJ_OTmUrZYY1lYtxGiIy3wpid2G5vajx4Hmqz-pKp0QGTJFSNFbW7oZEtV1yuLQ",
    "https://w7.pngwing.com/pngs/849/336/png-transparent-html5-games-a-games-games-for-kids-match3-matching-games-free-android-game-text-logo.png",
  ];
  final List childrengamesname =[
    "River Fishing ",
    "Space Explorer",
    "Baby Phone",
    "Talking Tom",
    "Crazy Match ",
  ];

  final List braingames=[
    "https://img.poki.com/cdn-cgi/image/quality=78,width=1200,height=1200,fit=cover,f=png/e689238d6dcbb672b749ab65960c0d65.png",
    "https://4.imimg.com/data4/WG/RD/MY-24878493/paper-brain-teasers-500x500.jpg",
    "https://hips.hearstapps.com/hmg-prod/images/dudas-penguins-1579617849.png",
  "https://images-eds-ssl.xboxlive.com/image?url=Q_rwcVSTCIytJ0KOzcjWTYtI_MIrVq4WfN7M.qN7gV3ayNiQeJK6Uxg366DH3bnR6uRGlqMQdPsfdKJXDdj1WN5OL98ztCi.sOir0ezkeOTZG951f1X.eoLtJqKQap9AJ_nF3hJ5bF.F1jF34BzGJA--&format=source",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5tYsblX03QrnqeYbMLW3t3HiWdpbIN4-L08qGhUZauA&s",
  "https://parade.com/.image/t_share/MTkwNTgxMjQzOTEzMTg0Mzgx/brain-teasers-ftr.jpg",
  "https://www.spellboundbookstore.com/cdn/shop/products/9781450815741-1_1024x1024.jpg?v=1470293977",
    "https://parade.com/.image/t_share/MTkwNTgxMjQzOTEzMTg0Mzgx/brain-teasers-ftr.jpg",
  ];
  final List braingamesname=[
    "Brain Games",
    "Maze Solver",
    "Find The Odd One",
   "Brain Games 2",
    "sudoku",
    "Brain tester",
    "Logic Solver",
        "Word Minded",
  ];

  final List allgames=[
    "https://play-lh.googleusercontent.com/PZ36hJ_OTmUrZYY1lYtxGiIy3wpid2G5vajx4Hmqz-pKp0QGTJFSNFbW7oZEtV1yuLQ",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI4D97Q2exXD76LieoPNexn72JrrmcCdZKgrF-yskgJA&s",
    "https://cdn1.epicgames.com/salesEvent/salesEvent/725818d8-9768-4a6a-a723-3039aaee1e23_1200x1600-3b6116d3fc1b566b71251d04bce27938",
    "https://img.poki.com/cdn-cgi/image/quality=78,width=1200,height=1200,fit=cover,f=png/e689238d6dcbb672b749ab65960c0d65.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgTJlGUYMH-cwmi9E5HaKv2kKaUP7-C9sep5Ej6HgOJw&s",

  ];
  final List allgamesnames=[
    "Talking Tom",
    "Battle Forces",
    "Farming Stimulator",
    "Brain Games",
    "Alien Battles",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("GAME", style: TextStyle(
            color: Colors.red, fontSize: 17, fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.search, color: Colors.red),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height/3,
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
              itemCount: allgames.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(

                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:NetworkImage(allgames[index]),
                      fit: BoxFit.fill,),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Align(alignment: Alignment.bottomLeft,
                      child: Text(allgamesnames[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Continew Playing",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red),),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("✨ Trending ✨ ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red),),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: game.length,
                  itemBuilder: (BuildContext con, index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/7,
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(game[index]),fit: BoxFit.fill
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Text(gametext[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),) ,

                        ],
                      ),
                    );
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("👶Games for Children👶 ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red),),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: childrengames.length,
                  itemBuilder: (BuildContext con, index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/7,
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(childrengames[index]),fit: BoxFit.fill
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Text(childrengamesname[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),) ,

                        ],
                      ),
                    );
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("🧠Brain Games🧠 ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red),),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:braingames.length,
                  itemBuilder: (BuildContext con, index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/7,
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(braingames[index]),fit: BoxFit.fill
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Text(braingamesname[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),) ,

                        ],
                      ),
                    );
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("🎮 ALL GAMES 🎮",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red),),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:allgames.length,
                  itemBuilder: (BuildContext con, index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/7,
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(allgames[index]),fit: BoxFit.fill
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Text(allgamesnames[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),) ,

                        ],
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }

}