import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondHome extends StatefulWidget {
  static const String id = 'second_home';

  const SecondHome({Key? key}) : super(key: key);

  @override
  State<SecondHome> createState() => _SecondHomeState();
}

class _SecondHomeState extends State<SecondHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            _buildTopBar(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 7,
              child: _buildContent(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.close_rounded,
              size: 36,
            ),
          ),
          const SizedBox(width: 50),
          const Text(
            'Create New Task',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      width: 400,
      decoration: const BoxDecoration(
        color: Color(0xff202635),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildUploadSection(),
            _buildDateSection(),
            _buildDateContainer(), // Display the date and day container
            _buildTextField('Theme'),
            _buildTextField('Time', icon: CupertinoIcons.clock),
            _buildTextField('Description'),
            const SizedBox(height: 40),
            _buildCreateButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildUploadSection() {
    return Container(
      height: 70,
      width: 350,
      decoration: BoxDecoration(
        color: const Color(0xff636772),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Row(
        children: [
          Expanded(
            flex: 2,
            child: Icon(
              Icons.image_outlined,
              color: Colors.white,
              size: 36,
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              'Upload a Picture',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateSection() {
    return const SizedBox(
      width: 350,
      height: 70,
      child: Row(
        children: [
          Text(
            'April, 5',
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
            ),
          ),
          SizedBox(width: 10),
          Text(
            'Sunday',
            style: TextStyle(
              color: Color(0xffd2d4d7),
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateContainer() {
    return Container(
      height: 170,
      width: 450,
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ReUsable(date: 4, day: 'Sat'),
            ReUsable(date: 5, day: 'Sun'),
            ReUsable(date: 6, day: 'Mon'),
            ReUsable(date: 7, day: 'Tue'),
            ReUsable(date: 8, day: 'Wed'),
            ReUsable(date: 9, day: 'Thur'),
            ReUsable(date: 10, day: 'Fri'),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, {IconData? icon}) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Color(0xff8f9197)),
          hintText: hintText,
          suffixIcon: icon != null ? Icon(icon, color: Colors.white) : null,
          enabled: true,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildCreateButton() {
    return Container(
      height: 65,
      width: 310,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.white70,
            blurRadius: 5.0,
            offset: Offset(0, 1),
            spreadRadius: 1,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Center(
        child: Text(
          'Create',
          style: TextStyle(color: Color(0xff2a303b), fontSize: 22),
        ),
      ),
    );
  }
}

class ReUsable extends StatelessWidget {
  final int date;
  final String day;

  const ReUsable({Key? key, required this.date, required this.day})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 15,
              spreadRadius: 1,
              offset: Offset(1, 15),
            )
          ],
          color: const Color(0xff202633),
          borderRadius: BorderRadius.circular(15),
        ),
        height: 110,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              day.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              date.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 42),
            )
          ],
        ),
      ),
    );
  }
}
