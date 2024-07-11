import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ott/utlis.dart';
import 'package:shared_preferences/shared_preferences.dart';


class bnm extends StatefulWidget {
  const bnm({super.key});

  @override
  State<bnm> createState() => _bnmState();
}

class _bnmState extends State<bnm> {

  Uint8List? _image;

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  Future<void> _saveImage(Uint8List bytes) async {
    final prefs = await SharedPreferences.getInstance();
    final base64String = base64Encode(bytes);
    await prefs.setString('profile_image', base64String);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  _image != null ?
                      CircleAvatar(
              radius: 64,
                        backgroundImage:MemoryImage(_image!),
                      )

                      :
                 const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage('https://png.pngtree.com/png-vector/20191004/ourmid/pngtree-person-icon-png-image_1788612.jpg'),
                  ),
                  Positioned(
                    child: IconButton(
                      onPressed: selectImage,
                      icon: const Icon(Icons.add_a_photo),
                    ),
                    bottom: -10,
                    left: 80,
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

