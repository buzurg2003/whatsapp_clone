import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/app_colors.dart';

class CommunitiesPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Communities'),
        backgroundColor: AppColors.backgroundColor,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Community 1'),
            subtitle: Text('Community 1 subtitle'),
          ),
        ],
      ),
    );
  }
}