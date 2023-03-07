import 'package:flutter/material.dart';

class Accounttab2 extends StatelessWidget {
  const Accounttab2({super.key});

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
            color: Colors.deepPurpleAccent[100],
          ),
        );
      },
    );
  }
}
