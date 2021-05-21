import 'package:flutter/material.dart';
import 'package:whatsappclone/components/chatTile.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, i) {
        return ChatTile();
      },
    );
  }
}
