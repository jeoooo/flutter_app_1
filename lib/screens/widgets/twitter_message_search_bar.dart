// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, use_super_parameters, unnecessary_import, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TwitterMessageSearchBar extends StatelessWidget {
  const TwitterMessageSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
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
    );
  }
}
