import 'package:flutter/material.dart';

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
          foregroundColor: Colors.black,
          backgroundColor: Colors.green[700],
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
