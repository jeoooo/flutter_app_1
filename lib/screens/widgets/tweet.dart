// ignore_for_file: unnecessary_import, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Tweet extends StatefulWidget {
  String? name, username, time, tweet;
  int? comments, retweets, likes;

  Tweet(
      {super.key,
      // user data
      this.name,
      this.username,
      this.time,
      // user tweet
      this.tweet,
      // tweet stats
      this.comments,
      this.retweets,
      this.likes});

  @override
  State<Tweet> createState() => _TweetState();
}

class _TweetState extends State<Tweet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey, // Replace with desired color
            width: 1, // Adjust the width as needed
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 8.0, right: 8.0, top: 16.0, bottom: 16.0),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 32,
              ),
              SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Juan Dela Cruz',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: ' ',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        TextSpan(
                          text: '@username',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        TextSpan(
                          text: ' • ',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        TextSpan(
                          text: '12h',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, bottom: 20.0),
                    child: SizedBox(
                      width: 300,
                      child: Text(
                          'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata'),
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/comment_icon.svg',
                            height: 20,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            '123',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(width: 32.0),
                          SvgPicture.asset(
                            'assets/retweet_icon.svg',
                            height: 16,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            '123',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(width: 32.0),
                          SvgPicture.asset(
                            'assets/heart_icon.svg',
                            height: 16,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            '123',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(width: 32.0),
                          SvgPicture.asset(
                            'assets/share_icon.svg',
                            height: 16,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            '123',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
