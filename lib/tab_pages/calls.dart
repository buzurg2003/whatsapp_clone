import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.link),
          title: Text(
            'Create call link',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          subtitle: Text('Share link for your WhatsApp call'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Recent',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Kali Group of Innovators'),
          subtitle: Text('Today, 10:00 PM'),
        ),
      ],
    );
  }
}
