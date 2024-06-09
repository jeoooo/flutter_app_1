// ignore_for_file: use_super_parameters, prefer_const_constructors, constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum NavbarType {
  NEWS_FEED,
  SEARCH,
  NOTIFICATIONS,
  // Add more types here
}

class TwitterNavbar extends StatelessWidget {
  final NavbarType navbarType;

  const TwitterNavbar({
    Key? key,
    this.navbarType = NavbarType.NEWS_FEED,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (navbarType) {
      case NavbarType.SEARCH:
        return _SearchNavbar();
      case NavbarType.NOTIFICATIONS:
        return _NotificationsNavbar();
      case NavbarType.NEWS_FEED:
      default:
        return _NewsFeedNavbar();
    }
  }
}

class _NewsFeedNavbar extends StatelessWidget {
  const _NewsFeedNavbar();

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: TwitterAvatar(),
        centerTitle: true,
        title: SvgPicture.asset(
          'assets/twitter_logo.svg',
          height: 32.0,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: SvgPicture.asset(
              'assets/feature_stroke_icon.svg',
              height: 32.0,
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchNavbar extends StatelessWidget {
  const _SearchNavbar();

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: TwitterAvatar(),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search Twitter',
            fillColor: Colors.grey[200], // specify your color here
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius:
                  BorderRadius.circular(40.0), // specify your radius here
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
            prefixIcon: Icon(Icons.search), // add your icon here
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: SvgPicture.asset(
              'assets/settings_icon.svg',
              height: 32.0,
            ),
          ),
        ],
      ),
    );
  }
}

class _NotificationsNavbar extends StatelessWidget {
  const _NotificationsNavbar();

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(200),
      child: DefaultTabController(
        length: 2, // number of tabs
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
                200.0), // Set this value as per your requirement
            child: AppBar(
              automaticallyImplyLeading: false,
              leading: TwitterAvatar(),
              centerTitle: true,
              title: Text(
                'Notifications',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: SvgPicture.asset(
                    'assets/settings_icon.svg',
                    height: 32.0,
                  ),
                ),
              ],
              bottom: TabBar(
                tabs: [
                  Tab(text: 'All'), // replace with your tab text
                  Tab(text: 'Mentions'), // replace with your tab text
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              // replace with your tab content
              Center(child: Text('All')),
              Center(child: Text('Mentions')),
            ],
          ),
        ),
      ),
    );
  }
}

class TwitterAvatar extends StatelessWidget {
  const TwitterAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Stack(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.grey[200],
          ),
          Positioned(
            top: 10,
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 6.00,
            ),
          ),
        ],
      ),
    );
  }
}
