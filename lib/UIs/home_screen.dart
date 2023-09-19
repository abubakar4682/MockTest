import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Custom_widgets/CardWithData.dart';
import '../Custom_widgets/card_widget.dart';

import '../Custom_widgets/switch_button.dart';
import '../model/items_model.dart';
import 'second_home.dart';
import '../theme/app_theme.dart';
import '../theme/colores.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroung,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroung,
        title: Center(
          child: Text(
            'Schedule',
            style: inoTheme.headerstyle,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Abubakar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings), // Add an icon (e.g., settings)
              title: Text('Settings'),
              onTap: () {
                // Handle Settings item tap
              },
            ),
            ListTile(
              leading: Icon(Icons.logout), // Add an icon (e.g., logout)
              title: Text('Logout'),
              onTap: () {
                // Handle Logout item tap
              },
            ),
            // Add more ListTile widgets for additional menu items
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(18, 10, 0, 8),
              child: Text(
                'Hi Sahibzada.',

                style: inoTheme.headerstyle,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(18, 10, 0, 8),
              child: Text(
                'Good Morning',
                style: inoTheme.Headingtext,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: chatsList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 1); // Add space between products
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ChatItem(chat: chatsList[index]),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SwitchWidget(),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: chatsList.length,
              itemBuilder: (BuildContext context, int index) {
                return ChatCard(chat: chatsList[index]);
              },
            ),

          ],
        ),
      ),

    );
  }
}
