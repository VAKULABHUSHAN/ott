import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ott/Modeltheme.dart';
import 'package:provider/provider.dart';


class cat extends StatefulWidget {
  const cat({super.key});

  @override
  State<cat> createState() => _catState();
}

class _catState extends State<cat> {
  final List name=[
    "English",
    "Tamil",
    "Telugu",
    "Hindi",
    "Malayalam",
    "Kannada",
    "Marathi",
    "Assamese",
    "Bengali",
    "French",
    "Horror",
    "Thriller",
    "Crime film",
    "Comedy",
    "Action",
    "Romance",
    "Documentary",
    "War",
    "Martial Arts",
    "Narrative",
    "Musical",


  ];

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
        }, icon: Icon(Icons.arrow_back,color: Colors.red,)
        ),
        title:Text("📜Catagories📜",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.red),),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
          Container(
            height: MediaQuery.of(context).size.height/1,

            child: ListView.builder(
              itemCount: name.length,
                itemBuilder: (BuildContext,index){
                return ListTile(
                    title: Center(child: Text(name[index],style: TextStyle(color: Colors.red,fontSize: 25),)));
                }
            ),
          )
          ],
        ),
      ) ,
    );
    }
    );
  }
}
