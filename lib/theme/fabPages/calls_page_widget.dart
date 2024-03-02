import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/app_colors.dart';

class CallsPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Screen for Index 3'),
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Center(
        child: Text('This is a new screen for index 3'),
      ),
    );
  }
}
