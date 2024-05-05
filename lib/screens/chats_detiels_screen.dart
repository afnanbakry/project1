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
                backgroundImage: NetworkImage(
                    'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg')),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              'Afnan',
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Replace with actual message count
                itemBuilder: (context, index) {
                  // Replace with logic to display actual messages
                  return buildMessage(
                    index,
                    index % 2 == 0
                        ? true
                        : false, // Example: Alternate between sender and receiver
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            buildMessageInputField(),
          ],
        ),
      ),
    );
  }

  Widget buildMessage(int index, bool isSender) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          color: isSender ? Colors.blue.withOpacity(0.2) : Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isSender ? 10.0 : 0),
            topRight: Radius.circular(isSender ? 0 : 10.0),
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        child: Text(
          'Message $index', // Replace with actual message content
          style: TextStyle(color: isSender ? Colors.white : Colors.black),
        ),
      ),
    );
  }

  Widget buildMessageInputField() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                controller: messageController,
                decoration: InputDecoration(
                  hintText: 'Write your message...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          onPressed: () {
            // Handle send button click
            // Example: Send message from input field
            print('Message sent: ${messageController.text}');
            messageController.clear();
          },
          child: Icon(Icons.send),
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
      ],
    );
  }
}
