import 'package:flutter/material.dart';

class Updatedata extends StatefulWidget {
  const Updatedata({super.key});

  @override
  State<Updatedata> createState() => _UpdatedataState();
}

TextEditingController communications = TextEditingController();
Map introduction = {};

class _UpdatedataState extends State<Updatedata> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xffEFF6FF),
            appBar: AppBar(
              backgroundColor: Color(0xffEFF6FF),
              centerTitle: true,
              leading: Row(
                children: [
                  SizedBox(width: 10),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      )),
                ],
              ),
              actions: [
                SizedBox(width: 100),
                Text(
                  "Student Detail",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Spacer(),
              ],
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Column(
                      children: List.generate(
                        controllerlist.length,
                            (index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Detail_textfild(index),
                          );
                        },
                      )),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/updateData');
                    },
                    child: Container(
                      child: Center(child: Text('Add',style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
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
          ),
    );
  }


  SizedBox Detail_textfild(int index) {
    return SizedBox(
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 300,
            child: TextField(
              controller: controllerlist[index],
              decoration: InputDecoration(
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: 'grid',
              ),
            ),
          ),

          SizedBox(width: 5),
          InkWell(
              onTap: () {
                setState(() {
                  TextEditingController controller =
                  TextEditingController(text: 'name');
                  controllerlist.add(controller);
                });
              },
              child: Icon(
                Icons.add,
                size: 33,
                color: Colors.black,
              )),
          SizedBox(width: 5),
          IconButton(
              onPressed: () {
                setState(() {
                  controllerlist.removeAt(index);
                });
              },
              icon: Icon(
                Icons.delete,
                size: 33,
                color: Colors.black,
              )),

        ],
      ),
    );

  }
}
TextEditingController controller = TextEditingController(text: 'name');
List<TextEditingController> controllerlist = [controller];
