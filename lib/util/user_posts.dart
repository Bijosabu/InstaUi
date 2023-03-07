import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String? text;
  final String image;
  const UserPosts({required this.image, this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/profile/MichaelScott.png'),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                        color: Colors.grey[200]),
                    height: 40,
                    width: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      text!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(Icons.favorite),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Icon(Icons.chat_bubble_outline),
                ),
                Icon(Icons.share),
              ],
            ),
            const Icon(Icons.bookmark),
          ],
        ),
        //liked by
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: const [
              Text('Liked by '),
              Text(
                'Dwight Schrute',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                '4 Others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        //caption
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 2),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    text: 'Michael Scott  ',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text:
                      'I am a friend first,a boss second,probably an entertainer third.',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
