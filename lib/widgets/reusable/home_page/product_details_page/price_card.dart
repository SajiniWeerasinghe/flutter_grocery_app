import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  final int productNumber;
  final String productName;
  final double productWeight;
  final String unit;

  const PriceCard({
    super.key,
    required this.productNumber,
    required this.productName,
    required this.productWeight,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xffFFE500),
              ),
              child: Center(
                child: Text(
                  productNumber.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 100,
              child: Text(
                productName,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff3B3636).withOpacity(0.75),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9).withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "${productWeight.toStringAsFixed(2)} $unit",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Color(0xff3B3636),
                        width: 1,
                      ),
                    ),
                    child: Center(child: Icon(Icons.add)),
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Color(0xff3B3636),
                        width: 1,
                      ),
                    ),
                    child: Center(child: Icon(Icons.remove)),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}
