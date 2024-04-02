// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, use_super_parameters, unnecessary_import, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_1/screens/widgets/twitter_navbar.dart';
import 'package:flutter_app_1/screens/widgets/twitter_navbar_item.dart';
import 'widgets/news_feed.dart';
import 'widgets/twitter_message_search_bar.dart';
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
          TwitterNavbarItem(iconPath: 'assets/home_icon.svg'),
          TwitterNavbarItem(iconPath: 'assets/search_icon.svg'),
          TwitterNavbarItem(iconPath: 'assets/bell_icon.svg'),
          TwitterNavbarItem(iconPath: 'assets/mail_icon.svg'),
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
            return TwitterSearch();
          case 2:
            // Placeholder for Notifications tab
            return Center(
              child: Text('Notifications Tab'),
            );
          case 3:
            // Placeholder for Profile tab
            return CupertinoPageScaffold(
              navigationBar: TwitterNavbar(type: TwitterNavbarType.messages),
              backgroundColor: Colors.white,
              child: SafeArea(
                child: Column(children: [
                  TwitterMessageSearchBar(),
                  Expanded(
                    // Add Expanded widget here
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 32,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Juan Dela Cruz'),
                                        SizedBox(width: 136),
                                        Text('12/02/19'),
                                      ],
                                    ),
                                    SizedBox(height: 8.0),
                                    Text('You: You’re very welcome AzizDjan!'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ]),
              ),
            );
          default:
            return Container();
        }
      },
    );
  }
}
