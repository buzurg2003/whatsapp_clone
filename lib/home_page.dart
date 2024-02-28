import 'package:flutter/material.dart';
import 'package:whatsapp_clone/tab_pages/calls.dart';
import 'package:whatsapp_clone/tab_pages/chats.dart';
import 'package:whatsapp_clone/tab_pages/community.dart';
import 'package:whatsapp_clone/tab_pages/updates.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Color.fromRGBO(32, 45, 53, 1),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.people)),
              Tab(text: 'Chats'),
              Tab(text: 'Updates'),
              Tab(text: 'Calls'),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 0
              ),
              child: Icon(Icons.camera_alt_outlined),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 0
              ),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 0
              ),
              child: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Container(
              color: Color.fromARGB(17, 30, 38, 0),
              child: CommunityPage()
            ),
            Container(
              color: Color.fromARGB(17, 30, 38, 0),
              child: ChatsPage(),
            ),
            Container(
              color: Color.fromARGB(17, 30, 38, 0),
              child: UpdatesPage(),
            ),
            Container(
              color: Color.fromARGB(17, 30, 38, 0),
              child: CallsPage(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}
