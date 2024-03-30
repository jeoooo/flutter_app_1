// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, use_super_parameters, unnecessary_import, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_1/screens/widgets/twitter_navbar.dart';
import 'package:flutter_app_1/screens/widgets/twitter_navbar_item.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: CupertinoTextField(
                          prefix: Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: SvgPicture.asset(
                              'assets/search_icon.svg',
                              height: 14,
                            ),
                          ),
                          placeholder: 'Search Twitter',
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
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
