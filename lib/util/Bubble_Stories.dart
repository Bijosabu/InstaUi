import 'package:instaui/util/Bubble_Stories.dart';
import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String? text;
  final String profileimage;
  BubbleStories({required this.profileimage, this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(profileimage)),
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(text!),
        ],
      ),
    );
  }
}
