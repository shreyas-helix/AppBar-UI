import 'package:flutter/material.dart';
class Subjects extends StatelessWidget {
  const Subjects({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text,icon;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: TextButton(
            onPressed: () {  },
            child: Container(
              child: Column(
                children:  [
                  Row(
                    children: [
                      Text(text),
                    ],
                  ),
                ],
              ),
              height: 250,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25.0),
                //image: '', add asset image here
              ),
            ),
          ),
        ),
      ),
    );
  }
}