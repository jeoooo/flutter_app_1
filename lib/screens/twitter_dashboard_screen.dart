// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, use_super_parameters, unnecessary_import, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_1/screens/widgets/twitter_navbar.dart';
import 'package:flutter_svg/svg.dart';
import 'widgets/news_feed.dart';

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
            return CupertinoPageScaffold(
              navigationBar: TwitterNavbar(type: TwitterNavbarType.search),
              backgroundColor: Colors.white,
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        ),
                      ),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Trends for you',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 26,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'No new trends for you',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 26,
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Text(
                              'It seems like there’s not a lot to show you right now, but you can see trends for other areas',
                              style: TextStyle(
                                color: Color(0xFF687684),
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8.0),
                            ElevatedButton(
                              onPressed: () {
                                // Add your button onPressed logic here
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: Text(
                                'Change Location',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
