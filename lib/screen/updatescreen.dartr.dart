import 'package:flutter/material.dart';

class update extends StatefulWidget {
  const update({super.key});

  @override
  State<update> createState() => _updateState();
}

class _updateState extends State<update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "update",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Spacer(),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 15),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 15),
                child: Text('upadte name',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ),
              height: 60,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 15),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 15),
                child: Text('upadte std',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ),
              height: 60,
              width: 360,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 15),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 15),
                child: Text('upadte grid',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ),
              height: 60,
              width: 360,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15)
              ),
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/updateData');
            },
            child: Container(
              child: Center(child: Text('save',style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
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
    );
  }
}
