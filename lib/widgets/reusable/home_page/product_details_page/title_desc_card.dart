import 'package:flutter/material.dart';

class TitleDescCard extends StatelessWidget {
  final String title;
  final String desc;
  const TitleDescCard({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 23,
            color: Color(0xff3B3636),
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          desc,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff3B3636).withOpacity(0.75),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
