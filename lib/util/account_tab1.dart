import 'package:flutter/material.dart';

class Accounttab1 extends StatelessWidget {
  final List<String> userPosts = [];
  final List<String> posts;

  Accounttab1({
    super.key,
    required this.posts,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            child: Image.asset(posts[index]),
            color: Colors.blueGrey[100],
          ),
        );
      },
    );
  }
}
