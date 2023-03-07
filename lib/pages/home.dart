import 'package:flutter/material.dart';
import 'package:instaui/util/Bubble_Stories.dart';
import 'package:instaui/util/user_posts.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final List people = [
    'Michael',
    'Jim',
    'Pam',
    'Dwight',
    'Angela',
    'Holly',
  ];
  final List images = [
    'assets/userposts/1.jpg',
    'assets/userposts/2.jpg',
    'assets/userposts/3.jpg',
    'assets/userposts/4.jpg',
    'assets/userposts/5.jpg',
    'assets/userposts/6.png',
  ];
  final List profileImages = [
    'assets/profile/MichaelScott.png',
    'assets/profile/jim.jpg',
    'assets/profile/pam.jpg',
    'assets/profile/dwight.jpg',
    'assets/profile/holly.jpg',
    'assets/profile/angela.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                const Icon(Icons.add),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Icon(Icons.favorite),
                ),
                const Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Stories
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(
                  text: people[index],
                  profileimage: profileImages[index],
                );
              },
            ),
          ),
          // POSTS
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPosts(
                  image: images[index],
                  text: 'Michael Scott',
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
