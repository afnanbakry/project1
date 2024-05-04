

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

import 'chats_detiels_screen.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: true,
      builder: (context) => ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) =>
            buildChatItem( context),
        separatorBuilder: (context, index) =>Divider(),
        itemCount:5,
      ),
      fallback: (context) => Center(child: CircularProgressIndicator()),
    );
  }

  Widget buildChatItem( context) => InkWell(
    onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => ChatsDetailsScreen(),));
    },
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage(
              'assets/images/dilevery_logo.png',
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Text(
            'Mohammed',
            style: TextStyle(
              height: 1.4,
            ),
          ),
        ],
      ),
    ),
  );
}
