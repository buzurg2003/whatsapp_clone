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
  bool _isSearchVisible = false;

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
        title: _isSearchVisible ? _buildSearchField() : Text('WhatsApp'),
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
        actions: _buildActions(),
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

  List<Widget> _buildActions() {
    if (_isSearchVisible) {
      return [
        IconButton(
          onPressed: () {
            setState(() {
              _isSearchVisible = false;
            });
          },
          icon: Icon(Icons.close),
        ),
      ];
    } else {
      return [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CameraPageWidget(),
              ),
            );
          },
          icon: Icon(Icons.camera_alt_outlined),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              _isSearchVisible = true;
            });
          },
          icon: Icon(Icons.search),
        ),
        PopupMenuButton<int>(
          color: AppColors.backgroundColor,
          itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
            PopupMenuItem<int>(
              child: Text('New group'),
              value: 1,
            ),
            PopupMenuItem<int>(
              child: Text('New broadcast'),
              value: 2,
            ),
            PopupMenuItem<int>(
              child: Text('Linked devices'),
              value: 3,
            ),
            PopupMenuItem<int>(
              child: Text('Starred messages'),
              value: 3,
            ),
            PopupMenuItem<int>(
              child: Text('Settings'),
              value: 3,
            ),
            // Add more items as needed
          ],
          onSelected: (int value) {
            // Handle selection of menu item
            switch (value) {
              case 1:
              // Do something for item 1
                break;
              case 2:
              // Do something for item 2
                break;
            // Handle other items as needed
            }
          },
        ),
      ];
    }
  }

  Widget _buildSearchField() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search...',
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.white),
      ),
      style: TextStyle(color: Colors.white),
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
