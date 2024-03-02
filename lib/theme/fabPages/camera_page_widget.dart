import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/app_colors.dart';

class CameraPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.black
        ),
      ),
      body: Center(
        child: Text('This is a new screen for index 2'),
      ),
    );
  }
}