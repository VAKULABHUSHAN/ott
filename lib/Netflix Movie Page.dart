import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:ott/Modeltheme.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';



class nmp extends StatefulWidget {
  const nmp({super.key});

  @override
  State<nmp> createState() => _nmpState();
}

class _nmpState extends State<nmp> {

  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return
    Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child)
    {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back,color: Colors.red,),
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
          children: [
            Container(
              height: MediaQuery.of(context).size.height /2,
              width: MediaQuery.of(context).size.width /1,
              child: FlickVideoPlayer(
                  flickManager: flickManager
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/20,
              width: MediaQuery.of(context).size.width/1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "HARRY POTTER",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.red),
                    )),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/25,
              width: MediaQuery.of(context).size.width/1,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "2023   U/A   2h 35m ",
                      style: TextStyle(fontSize: 15, color: Colors.red),
                    ),
                  ),
                  Icon(
                    Icons.hd_outlined,
                    color: Colors.red.shade50,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height/12,
                width: MediaQuery.of(context).size.width/1,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Center(
                    child: Text(
                      " ▶ Play",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: MediaQuery.of(context).size.height/12,
                  width: MediaQuery.of(context).size.width/1,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_download_outlined,
                        color: Colors.red,
                      ),
                      Text(
                        "Download",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),
                      ),
                    ],
                  )),
            ),
            Text(
              "Adaptation of the first of J.K. Rowling's popular children's novels about Harry Potter, a boy who learns on his eleventh birthday that he is the orphaned son of two powerful wizards and possesses unique magical powers of his own. He is summoned from his life as an unwanted child to become a student at Hogwarts, an English boarding school for wizards. There, he meets several friends who become his closest allies and help him discover the truth about his parents' mysterious deaths.",
              style: TextStyle(fontSize: 15, color: Colors.red),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.red,
                      ),
                      Text(
                        "My List",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.red,
                      ),
                      Text(
                        "Rate ",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.red,
                      ),
                      Text(
                        "Share ",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              endIndent: 259,
              indent: 10,
              color: Colors.redAccent,
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "More Like This ",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_2.png",),
                          fit: BoxFit.fill,
                        ))
                ),
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_3.png",),
                          fit: BoxFit.fill,
                        ))
                ),
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_4.png",),
                          fit: BoxFit.fill,
                        ))
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_4.png",),
                          fit: BoxFit.fill,
                        ))
                ),
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_5.png",),
                          fit: BoxFit.fill,
                        ))
                ),
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_6.png",),
                          fit: BoxFit.fill,
                        ))
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_7.png",),
                          fit: BoxFit.fill,
                        ))
                ),
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_8.png",),
                          fit: BoxFit.fill,
                        ))
                ),
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_9.png",),
                          fit: BoxFit.fill,
                        ))
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_10.png",),
                          fit: BoxFit.fill,
                        ))
                ),
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_11.png",),
                          fit: BoxFit.fill,
                        ))
                ),
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_12.png",),
                          fit: BoxFit.fill,
                        ))
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_13.png",),
                          fit: BoxFit.fill,
                        ))
                ),
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_14.png",),
                          fit: BoxFit.fill,
                        ))
                ),
                Container(
                    height: MediaQuery.of(context).size.height/7,
                    width: MediaQuery.of(context).size.width/3.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img_15.png",),
                          fit: BoxFit.fill,
                        ))
                ),
              ],
            ),
          ],
        ),
      ),
    );});
  }
}









