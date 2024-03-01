import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/app_colors.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: () { 
          
        },
        style: FilledButton.styleFrom(
          foregroundColor: AppColors.black,
          backgroundColor: AppColors.activeColor,
        ), 
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 12
          ),
          child: Text('Start your community'),
        ),
      ),
    );
  }
}
