import 'package:flutter/material.dart';
import 'UIs/bottom_sheet.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomPage(),
    );
  }
}



