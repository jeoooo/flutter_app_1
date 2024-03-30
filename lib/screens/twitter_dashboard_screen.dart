// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, use_super_parameters, unnecessary_import, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_1/screens/widgets/twitter_navbar.dart';
import 'package:flutter_svg/svg.dart';
import 'widgets/news_feed.dart';
import 'widgets/twitter_search.dart';

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
            activeIcon: SvgPicture.asset('assets/home_icon.svg',
                color: Color(0xFF4C9EEB)),
            icon: SvgPicture.asset('assets/home_icon.svg'),
            // label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset('assets/search_icon.svg',
                color: Color(0xFF4C9EEB)),
            icon: SvgPicture.asset('assets/search_icon.svg'),
            // label: 'Search',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset('assets/bell_icon.svg',
                color: Color(0xFF4C9EEB)),
            icon: SvgPicture.asset('assets/bell_icon.svg'),
            // label: 'Notifications',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset('assets/mail_icon.svg',
                color: Color(0xFF4C9EEB)),
            icon: SvgPicture.asset('assets/mail_icon.svg'),
            // label: 'Profile',
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
            return NewsFeed();
          case 1:
            // Placeholder for Search tab
            return TwitterSearch();
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
