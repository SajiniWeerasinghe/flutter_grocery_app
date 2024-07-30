import 'package:flutter/material.dart';

class RatingsCard extends StatelessWidget {
  const RatingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffCACACA).withOpacity(0.31),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.star,
            color: Color(0xffFFE500),
            size: 40,
          ),
          const Icon(
            Icons.star,
            color: Color(0xffFFE500),
            size: 40,
          ),
          const Icon(
            Icons.star,
            color: Color(0xffFFE500),
            size: 40,
          ),
          const Icon(
            Icons.star,
            color: Color(0xffFFE500),
            size: 40,
          ),
          Icon(
            Icons.star,
            color: const Color(0xff3B3636).withOpacity(0.75),
            size: 40,
          ),
        ],
      ),
    );
  }
}
