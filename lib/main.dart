import 'package:flutter/material.dart';
import 'package:whatsappclone/tabs/calls.dart';
import 'package:whatsappclone/tabs/camera.dart';
import 'package:whatsappclone/tabs/chats.dart';
import 'package:whatsappclone/tabs/status.dart';
import 'package:whatsappclone/screens/chatScreen.dart';


void main() => runApp(MaterialApp(
  initialRoute: "/",
  routes: {
    "/" : (context) => HomeScreen(),
    "/chat" : (context) => ChatScreen(),
  },
  debugShowCheckedModeBanner: false,
));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E54),
          title: Text('DansApp'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.photo_camera)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS')
            ],
            indicatorColor: Color(0xFFFFFFFF),
          ),
          actions: <Widget>[
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Camera(),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.chat),
          backgroundColor: Color(0xFF25D366),
          onPressed: () {},
        ),
      ),
    );
  }
}
