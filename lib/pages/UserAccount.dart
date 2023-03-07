import 'package:flutter/material.dart';
import 'package:instaui/util/Bubble_Stories.dart';
import 'package:instaui/util/account_tab1.dart';
import 'package:instaui/util/account_tab2.dart';
import 'package:instaui/pages/home.dart';
import 'package:instaui/util/account_tab3.dart';

class userAccount extends StatelessWidget {
  final List<String> name = [
    'Beach Day',
    'Tsunami Relief',
    'Fun-raiser',
    'Anti Rabies march',
    'Walkathon',
    'Jamaica'
  ];
  final List<String> posts = [
    'assets/userposts/7.jpg',
    'assets/userposts/8.jpg',
    'assets/userposts/9.jpg',
    'assets/userposts/10.jpg',
    'assets/userposts/5.jpg',
  ];
  userAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/profile/MichaelScott.png')),
                        shape: BoxShape.circle,
                        color: Colors.grey),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '72',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '810',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '550',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Michael Scott',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text('I… Declare…. Bankruptcy!'),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('Edit Details')),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('Ad Tools')),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('Insights')),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return BubbleStories(
                      text: name[index],
                      profileimage: 'assets/userposts/8.jpg',
                    );
                  },
                ),
              ),
            ),
            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.person),
                )
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                Accounttab1(
                  posts: posts,
                ),
                Accounttab2(),
                Accounttab3(),
              ]),
            )
          ],
        )),
      ),
    );
  }
}
