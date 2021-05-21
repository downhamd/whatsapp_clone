import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg'),
      ),
      title: Text('Chat title'),
      subtitle: Text('Subtitle'),
      onTap: () {
        Navigator.pushNamed(context, "/chat");
      },
    );
  }
}
