import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/pages/home_page/category_page/widgets/ratings.dart';
import 'package:flutter_grocery_app/widgets/reusable/home_page/categories_page/item_desc_card.dart';

class SelectedItems extends StatelessWidget {
  const SelectedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffE0DCD6).withOpacity(0.29),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xffE0DCD6),
          width: 10,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Vegetables",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff3B3636),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            ItemDescCard(
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
              number: 1,
            ),
            ItemDescCard(
              title:
                  "Eating vegetables boosts immunity, aids digestion, and supports a healthy weight....",
              number: 2,
            ),
            ItemDescCard(
              title:
                  "They come in various flavors and textures, enhancing your meals...",
              number: 3,
            ),
            ItemDescCard(
              title:
                  " Fresh, local vegetables support sustainable farming and lower your carbon footprint...",
              number: 4,
            ),
            SizedBox(
              height: 20,
            ),
            RatingsCard(),
          ],
        ),
      ),
    );
  }
}
