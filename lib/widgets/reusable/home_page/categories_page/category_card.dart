import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String description;

  final Color circleColor;
  final Color mainCategoryColor;
  final Color categoryBorderColor;

  const CategoryCard({
    super.key,
    required this.title,
    required this.description,
    required this.circleColor,
    required this.mainCategoryColor,
    required this.categoryBorderColor,
  });

  final double cardWidth = 175;
  final double cardHeight = 90;
  final double circleRadius = 40;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: mainCategoryColor,
        border: Border.all(color: categoryBorderColor, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Color(0xff3B3636).withOpacity(0.91),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: Color(0xff3B3636).withOpacity(0.67),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            Container(
              height: circleRadius,
              width: circleRadius,
              decoration: BoxDecoration(
                color: circleColor,
                borderRadius: BorderRadius.circular(100),
              ),
            )
          ],
        ),
      ),
    );
  }
}
