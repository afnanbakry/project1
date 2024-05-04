import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

class ChatsDetailsScreen extends StatelessWidget {
  ChatsDetailsScreen();

  var messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage(
                'assets/images/dilevery_logo.png', // Replace with the actual URL
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              'Mohammed',
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
      body: ConditionalBuilder(
        condition: true,
        builder: (context) => Padding(
          padding: EdgeInsets.all(17.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return buildMyMessage(); // Change to buildMessage() if needed
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                  itemCount: 5,
                ),
              ),
              Container(
                height: 50,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: TextFormField(
                          controller: messageController,
                          decoration: const InputDecoration(
                            hintText: 'write your message',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: MaterialButton(
                        color: Colors.blue,
                        onPressed: () {
                          // Handle send button click
                        },
                        minWidth: 1,
                        child: const Icon(
                          Icons.send,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        fallback: (context) => const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget buildMessage() => Align(
    alignment: AlignmentDirectional.centerStart,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadiusDirectional.only(
          bottomEnd: Radius.circular(
            10.0,
          ),
          topStart: Radius.circular(
            10.0,
          ),
          topEnd: Radius.circular(
            10.0,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 10.0,
      ),
      child: Text(
        'model',
      ),
    ),
  );

  Widget buildMyMessage() => Align(
    alignment: AlignmentDirectional.centerEnd,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(
          .2,
        ),
        borderRadius: BorderRadiusDirectional.only(
          bottomStart: Radius.circular(
            10.0,
          ),
          topStart: Radius.circular(
            10.0,
          ),
          topEnd: Radius.circular(
            10.0,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 10.0,
      ),
      child: Text(
        'model', // Fixed typo: 'model}' to 'model'
      ),
    ),
  );
}
