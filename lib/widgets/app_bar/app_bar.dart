import 'package:flutter/material.dart';

Widget appBarLeading = Padding(
  padding: const EdgeInsets.all(5.0),
  child: Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100), color: Color(0xff9E00FF)),
    child: const Center(
      child: Icon(Icons.add_location_alt, color: Color(0xffFFFFFF)),
    ),
  ),
);

Widget appBarTitle = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Delivery Address",
      style: TextStyle(
          fontSize: 16,
          color: Color(0xff3B3636).withOpacity(0.47),
          fontWeight: FontWeight.w400),
    ),
    const Text(
      "92 High Street , London",
      style: TextStyle(
          fontSize: 20, color: Color(0xff3B3636), fontWeight: FontWeight.w700),
    ),
  ],
);

Widget appBarActions = Padding(
  padding: const EdgeInsets.only(right: 5),
  child: Container(
    height: 45,
    width: 45,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: const Color(0xffFF9900).withOpacity(0.52),
    ),
    child: const Center(
      child: Icon(Icons.shop_rounded, color: Color(0xffFFFFFF)),
    ),
  ),
);
