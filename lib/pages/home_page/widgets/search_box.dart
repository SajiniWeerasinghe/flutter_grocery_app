import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: const Color(0xffD9D9D9).withOpacity(0.5),
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: const Color(0xff000000).withOpacity(0.2),
            )),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.search,
                color: const Color(0xff000000).withOpacity(0.5),
                size: 30,
              ),
            ),
            const Expanded(
                child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  hintText: "search here...",
                  hintStyle: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 7)),
            )),
          ],
        ),
      ),
    );
  }
}
