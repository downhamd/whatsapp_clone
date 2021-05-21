import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        title: Text("Chat title"),
        actions: <Widget>[
          Icon(Icons.videocam),
          Icon(Icons.phone),
          Icon(Icons.more_vert),
        ],
      ),
      backgroundColor: Color(0xFFECE5DD),
      bottomSheet: Container(
        child: Text("Bottom sheet"),
      ),
    );
  }
}
