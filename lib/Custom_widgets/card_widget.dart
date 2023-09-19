
import 'package:flutter/cupertino.dart';

import '../model/items_model.dart';
import '../theme/app_theme.dart';

class ChatItem extends StatelessWidget {
  final Items_models chat;

  ChatItem({required this.chat});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: NetworkImage(
                'https://www.photojaanic.com/blog/wp-content/uploads/sites/2/2017/07/food-photography-tips-photojaanic-3-1-1080x720.jpg'),
            fit: BoxFit.fill),
        border: Border.all(color: Color(0x26d8d8d8)),
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          begin: Alignment(0, -1),
          end: Alignment(0, 1),
          colors: <Color>[Color(0x00292f3f), Color(0xcc292f3f)],
          stops: <double>[0, 1],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x51000000),
            offset: Offset(14, 18),
            blurRadius: 17,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            chat.title,
            style: inoTheme. cardstyle,
          ),

          Transform.translate(
            offset: Offset(10.0, 30.0), // Adjust the X offset as needed
            child: Text(
              'Aftaari Items',
              style: inoTheme.cardstyle,
            ),
          ),
        ],
      ),
    );
  }
}