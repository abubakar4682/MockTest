import 'package:flutter/material.dart';

import '../model/items_model.dart';
class ChatCard extends StatelessWidget {
  final Items_models chat;

  ChatCard({required this.chat});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 0, 24, 16),
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0x26d8d8d8)),
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment(0, -1),
          end: Alignment(0, 1),
          colors: <Color>[Color(0x00292f3f), Color(0xcc292f3f)],
          stops: <double>[0, 1],
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x51000000),
            offset: Offset(14, 18),
            blurRadius: 17,
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(Icons.file_copy,color: Colors.white,),

        title: Transform.translate(
offset:Offset(0,-5),
          child: Text(
            chat.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        subtitle: Text(
          chat.subtitle,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        trailing:Icon(Icons.more_vert_rounded,color: Colors.white,) ,
        onTap: () {
          // Add your onTap action here
        },
      ),
    );
  }
}