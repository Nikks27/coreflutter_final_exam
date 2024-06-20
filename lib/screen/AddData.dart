import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ImagePicker imgpicker = ImagePicker();
File? fileImage, Image;
XFile? xFileImage;

class Adddata extends StatefulWidget {
  const Adddata({super.key});

  @override
  State<Adddata> createState() => _AdddataState();
}
TextEditingController txtname = TextEditingController();
TextEditingController txtgrid = TextEditingController();
TextEditingController txtstd = TextEditingController();

Map introduction = {};

bool istrue = false;

class _AdddataState extends State<Adddata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Data Screen',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: Row(
          children: [
            InkWell(
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ))),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: (fileImage == null)
                  ? Container(
                height: 130,
                width: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.brown.shade800)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Icon(Icons.person,
                          size: 65, color: Colors.black),
                    ),
                    Text(
                      'photo',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
                  : CircleAvatar(
                radius: 70,
                backgroundImage: (fileImage != null)
                    ? FileImage(fileImage!)
                    : null,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () async {
                      xFileImage = await imgpicker.pickImage(
                          source: ImageSource.gallery);

                      setState(() {
                        if (xFileImage != null) {
                          fileImage = File(xFileImage!.path);
                        }
                      });
                    },
                    child: Icon(
                      Icons.image,
                      size: 40,
                    )),
                InkWell(
                    onTap: () async {
                      xFileImage = await imgpicker.pickImage(
                          source: ImageSource.camera);
                      setState(() {
                        if (xFileImage != null) {
                          fileImage = File(xFileImage!.path);
                        }
                      });
                    },
                    child: Icon(Icons.camera_alt_outlined, size: 40))
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text(
                'Name',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: TextField(
                controller: txtname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: 'Naresh Rabari',
                ),
              ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text(
                'grid',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: TextField(
                controller: txtgrid,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: '5698',
                ),
              ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(right: 320),
              child: Text(
                'std',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: TextField(
                controller: txtstd,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: '10th',
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {
                 Navigator.of(context).pushNamed('/update');
              },
              child: Container(
                child: Center(child: Text('submit',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                height: 60,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
  Future<void> setimage() async {
    XFile? image = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      imgpath = File(image!.path);
    });
  }
}

ImagePicker picker = ImagePicker();
File? imgpath;

String? name;
String? birthday;
String? personal;
