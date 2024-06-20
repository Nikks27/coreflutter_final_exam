import 'package:coreflutter_final_exam/screen/updatescreen.dartr.dart';
import 'package:flutter/material.dart';

import 'AddData.dart';
import 'UpdateData.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Adddata(),
        '/update' : (context) => Updatedata(),
        '/updateData' : (context) => update(),
      },
    );
  }
}
