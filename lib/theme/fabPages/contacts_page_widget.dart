import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/app_colors.dart';

class ContactsPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select contact'),
        backgroundColor: AppColors.backgroundColor,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5),
        children: [
          ListTile(
            leading: Icon(Icons.group),
            title: Text('New group'),
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text('New contact'),
            trailing: Icon(Icons.qr_code),
          ),
          ListTile(
            leading: Icon(Icons.groups),
            title: Text('New Community'),
          ),
          Text(
            'Contacts on WhatsApp',
            style: TextStyle(
              color: Colors.white70
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('+7 123 45 6789 (You)'),
            subtitle: Text(
              'Message yourself',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
