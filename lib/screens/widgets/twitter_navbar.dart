// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TwitterNavbar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  const TwitterNavbar({
    super.key,
    required this.type,
  });

  final TwitterNavbarType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case TwitterNavbarType.profile:
        return _buildProfileNavbar();
      case TwitterNavbarType.search:
        return _buildSearchNavbar();
    }
  }

  Widget _buildProfileNavbar() {
    return CupertinoNavigationBar(
      automaticallyImplyLeading: false,
      middle: Padding(
        padding: EdgeInsets.only(left: 12.0, right: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 20 / 1.2,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    constraints: BoxConstraints(
                      minWidth: 10,
                      minHeight: 10,
                    ),
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              'assets/twitter_logo.svg',
              height: 26,
            ),
            SvgPicture.asset(
              'assets/feature_stroke_icon.svg',
              height: 26,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchNavbar() {
    return CupertinoNavigationBar(
      automaticallyImplyLeading: false,
      middle: Padding(
        padding: EdgeInsets.only(left: 12.0, right: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 20 / 1.2,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    constraints: BoxConstraints(
                      minWidth: 10,
                      minHeight: 10,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 250.0,
                decoration: BoxDecoration(
                  color: Color(0xFFE7ECF0),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/search_icon.svg',
                      height: 14,
                    ),
                    SizedBox(width: 4.0),
                    Text(
                      'Search Twitter',
                      style: TextStyle(
                        color: Color(
                            0xFF687684), // Replace with your desired color
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SvgPicture.asset(
              'assets/settings_icon.svg',
              height: 26,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return false;
  }
}

enum TwitterNavbarType {
  profile,
  search,
}
