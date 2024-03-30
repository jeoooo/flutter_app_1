// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, use_super_parameters, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'widgets/tweet.dart';
import 'widgets/twitter_navbar.dart';

class TwitterDashboard extends StatefulWidget {
  const TwitterDashboard({Key? key}) : super(key: key);

  @override
  _TwitterDashboardState createState() => _TwitterDashboardState();
}

class _TwitterDashboardState extends State<TwitterDashboard> {
  int _selectedIndex = 0; // Index for the selected tab

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) => CupertinoPageScaffold(
                navigationBar: TwitterNavbar(),
                backgroundColor: Colors.white,
                child: SafeArea(
                  child: Column(
                    children: [
                      Tweet(),
                    ],
                  ),
                ),
              ),
            );
          case 1:
            // Placeholder for Search tab
            return Center(
              child: Text('Search Tab'),
            );
          case 2:
            // Placeholder for Notifications tab
            return Center(
              child: Text('Notifications Tab'),
            );
          case 3:
            // Placeholder for Profile tab
            return Center(
              child: Text('Profile Tab'),
            );
          default:
            return Container();
        }
      },
    );
  }
}
