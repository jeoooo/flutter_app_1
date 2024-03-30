// ignore_for_file: use_super_parameters, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TwitterNavbarItem extends BottomNavigationBarItem {
  TwitterNavbarItem({
    required String iconPath,
    String? activeIconPath,
    String? label,
  }) : super(
          icon: SvgPicture.asset(iconPath),
          activeIcon: SvgPicture.asset(
            iconPath,
            color: Color(0xFF4C9EEB),
          ),
          label: label,
        );
}
