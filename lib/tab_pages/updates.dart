import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/app_colors.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({super.key});

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding:  EdgeInsets.only(
            top: 20,
            left: 10,
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Status',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Icon(Icons.more_vert),
            ]
          ),
        ),
        ListTile(
          leading: Icon(Icons.person_add),
          title: Text('My status'),
          subtitle: Text('Tap to add status update'),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Channels',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Icon(Icons.add),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          child: Text('Stay updated on topics that matter to you. Find channels to follow below.'),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: _ChannelItemWidget(),
          ),
        ),
      ],
    );
  }
}

class _ChannelItemWidget extends StatelessWidget {
  const _ChannelItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 120,
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          Icon(
            Icons.group,
            color: AppColors.white,
            size: 70,
          ),
          Text('Group name'),
          ElevatedButton(
            onPressed: () {},
            child: Text('Follow'),
          ),
        ],
      ),
    );
  }
}
