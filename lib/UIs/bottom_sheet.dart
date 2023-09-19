import 'package:flutter/material.dart';
import 'second_home.dart';
import '../theme/colores.dart';
import 'home_screen.dart';

class BottomPage extends StatefulWidget {
  BottomPage({Key? key}) : super(key: key);

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff292f3f),
      body: pages[currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: backgroung,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 80,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(20)),
            color: Color(0xff292f3f),
          ),
          child: const Row(
            children: [
              Expanded(
                  child: Icon(
                Icons.home,
                color: Colors.white,
              )),
              Expanded(
                  child: Icon(
                Icons.person,
                color: Colors.white,
              ))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SecondHome()));
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar:  ,
    );
  }
}
