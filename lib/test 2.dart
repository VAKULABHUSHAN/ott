import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ott/Modeltheme.dart';
import 'package:ott/Netflix%20botnaiv.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Uint8List? _image;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final pickedImage = await showDialog<ImageSource>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Select image from:'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, ImageSource.gallery),
            child: Text('Gallery'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, ImageSource.camera),
            child: Text('Camera'),
          ),
        ],
      ),
    );

    if (pickedImage != null) {
      final pickedFile = await picker.pickImage(source: pickedImage);
      if (pickedFile != null) {
        final bytes = await File(pickedFile.path).readAsBytes();
        setState(() {
          _image = bytes;
        });
        _saveImage(bytes);
      }
    }
  }

  Future<void> _saveImage(Uint8List bytes) async {
    final prefs = await SharedPreferences.getInstance();
    final base64String = base64Encode(bytes);
    await prefs.setString('profile_image', base64String);
  }

  Future<void> _loadImage() async {
    final prefs = await SharedPreferences.getInstance();
    final base64String = prefs.getString('profile_image');
    if (base64String != null) {
      setState(() {
        _image = base64Decode(base64String);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return
      Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child)
    {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()
        {
           Navigator.push(context, 
           MaterialPageRoute(builder: (context)=> botnavi()
           ),
           );
        },
          icon: Icon(Icons.arrow_back,color: Colors.red,),
        ),
      title: Text("PROFILE",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      actions: [
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70),
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  _image != null
                      ? CircleAvatar(
                    radius: 80,
                    backgroundImage: MemoryImage(_image!),
                  )
                      : Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: const CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToiRnzzyrDtkmRzlAvPPbh77E-Mvsk3brlxQ&s",
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: -10,
                    child: IconButton(
                      onPressed: _selectImage,
                      icon: Icon(
                        Icons.add_a_photo,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height/13,
                width: MediaQuery.of(context).size.width/1.3,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter your name",
                    hintStyle: TextStyle(fontSize: 25) ,
                  ),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height/13,
                width: MediaQuery.of(context).size.width/1.3,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter your email",
                    hintStyle: TextStyle(fontSize: 25) ,
                  ),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height/13,
                width: MediaQuery.of(context).size.width/1.3,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter your mobile number",
                    hintStyle: TextStyle(fontSize: 25) ,
                  ),
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height/13,
                width: MediaQuery.of(context).size.width/1.3,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password_sharp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter your password",
                    hintStyle: TextStyle(fontSize: 25) ,
                  ),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),

          ],
        ),
      ),
    );
    });
  }
}