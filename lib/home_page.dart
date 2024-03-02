import 'package:flutter/material.dart';
import 'package:whatsapp_clone/tab_pages/calls.dart';
import 'package:whatsapp_clone/tab_pages/chats.dart';
import 'package:whatsapp_clone/tab_pages/community.dart';
import 'package:whatsapp_clone/tab_pages/updates.dart';
import 'package:whatsapp_clone/theme/app_colors.dart';
import 'package:whatsapp_clone/theme/fabPages/calls_page_widget.dart';
import 'package:whatsapp_clone/theme/fabPages/camera_page_widget.dart';
import 'package:whatsapp_clone/theme/fabPages/contacts_page_widget.dart';
import 'package:whatsapp_clone/theme/fabPages/communities_page_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {}); // Update the UI when tab changes
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        backgroundColor: AppColors.backgroundColor,
        foregroundColor: AppColors.white,
        bottom: TabBar(
          unselectedLabelColor: AppColors.white,
          tabs: [
            Tab(icon: Icon(Icons.people)),
            Tab(text: 'Chats'),
            Tab(text: 'Updates'),
            Tab(text: 'Calls'),
          ],
          controller: _tabController,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Icon(Icons.camera_alt_outlined),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CommunityPage(),
          ChatsPage(),
          UpdatesPage(),
          CallsPage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToScreen(context, _tabController.index);
        },
        child: _buildFabIcon(),
      ),
    );
  }

  Icon _buildFabIcon() {
    switch (_tabController.index) {
      case 0:
        return Icon(Icons.people);
      case 1:
        return Icon(Icons.message);
      case 2:
        return Icon(Icons.camera_alt);
      case 3:
        return Icon(Icons.add_ic_call);
      default:
        return Icon(Icons.message); // Default icon
    }
  }

  void _navigateToScreen(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CommunitiesPageWidget(),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ContactsPageWidget(),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CameraPageWidget(),
          ),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CallsPageWidget(),
          ),
        );
        break;
    }
  }
}
