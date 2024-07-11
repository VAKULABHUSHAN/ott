import 'package:flutter/material.dart';
import 'package:ott/Netflix%20botnaiv.dart';


class nup extends StatefulWidget {
  const nup({super.key});

  @override
  State<nup> createState() => _nupState();
}

class _nupState extends State<nup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:NetworkImage("https://d3t3ozftmdmh3i.cloudfront.net/staging/podcast_uploaded_nologo/360773/360773-1520262091652-fa603e15cdcd2.jpg"),
                  )
                ),
              ),
            ),
            Text("WHO IS WATCHING?",style: TextStyle(color: Colors.white,fontSize: 20),),
             Container(
               height: 400,
               width: 400,
               decoration: BoxDecoration(
               ),
               child: Column(
                 children: [

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,

                     children: [
                       Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(15.0),
                             child: GestureDetector(
                               child: Container(
                                 height: 100,
                                 width: 100,
                                 decoration: BoxDecoration(
                                   image: DecorationImage(
                                       image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYHc2vXjRAP7yh834Xf76lUIyKqAzrX2pG8i3qQ9fDMA&s") )
                                 ),
                               ),
                                 onTap: () {
                                   Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context) => botnavi(),
                                     ),
                                   );
                                 }
                                 ),
                           ),
                           Text("ram",style: TextStyle(fontSize: 20,color: Colors.white),),

                         ],
                       ),
                       Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(15.0),
                             child: GestureDetector(
                               child: Container(
                                 height: 100,
                                 width: 100,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         image:NetworkImage("https://www.shutterstock.com/image-illustration/user-icon-vector-female-person-260nw-1480365185.jpg") )
                                 ),
                               ),
                                 onTap: () {
                                   Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context) => botnavi(),
                                     ),
                                   );
                                 }

                             ),
                           ),
                           Text("sita",style: TextStyle(fontSize: 20,color: Colors.white),),

                         ],
                       ),

                     ],
                   ),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(15.0),
                             child: GestureDetector(
                               child: Container(
                                 height: 100,
                                 width: 100,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVS6hICSAvabZRaFy0ZFrXpPvuOIoAxoYrOg&s") )
                                 ),
                               ),
                                 onTap: () {
                                   Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context) => botnavi(),
                                     ),
                                   );
                                 }

                             ),
                           ),
                           Text("children",style: TextStyle(fontSize: 20,color: Colors.white),),
                         ],
                       ),
                       Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(15.0),
                             child: GestureDetector(
                               child: Container(
                                 height: 100,
                                 width: 100,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         image:NetworkImage("https://t4.ftcdn.net/jpg/03/56/17/75/360_F_356177598_bKRrM01JHWdF2sdABU5brZGTt3FqDqKf.jpg") )
                                 ),
                               ),
                                 onTap: () {
                                   Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context) => botnavi(),
                                     ),
                                   );
                                 }

                             ),
                           ),
                           Text("Add New",style: TextStyle(fontSize: 20,color: Colors.white),),

                         ],
                       ),

                     ],
                   ),
                 ],
               ),
               )
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
