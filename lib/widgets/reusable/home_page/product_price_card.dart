import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductPriceCard extends StatelessWidget {
  final String title;
  final double amount;
  final double price;
  final String unit;

  const ProductPriceCard({
    super.key,
    required this.title,
    required this.amount,
    required this.price,
    required this.unit,
  });

  final double cardHeight = 240;
  final double cardWidth = 180;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff9E00FF),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff06FFA5),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      amount.toString() + unit,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "$price\$",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFFE500),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
