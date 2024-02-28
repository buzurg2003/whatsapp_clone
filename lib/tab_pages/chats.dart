import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
      SizedBox(height: 20),
      ListTile(
        leading: Icon(Icons.person),
        title: Text(
          'Kali Group of Innovators',
          style: TextStyle(
            fontSize: 20
          ),
        ),
        subtitle: Text(
          'Daniel: The interesting thing is I a...',
          style: TextStyle(
            color: Colors.white30,
            fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}

