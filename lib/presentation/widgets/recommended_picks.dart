import 'package:flutter/material.dart';

class RecommendedPicks extends StatefulWidget {
  const RecommendedPicks({super.key});

  @override
  State<RecommendedPicks> createState() => _RecommendedPicksState();
}

class _RecommendedPicksState extends State<RecommendedPicks> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 22,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Recommended Picks',
            style: TextStyle(
              color: Color(0xFFFFFFFF), // White text color (#FFF)
              fontFamily: 'Poppins',
              fontSize: 16.0, // 16px font size
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600, // 600 font weight (semi-bold)
              height: 1.0, // Normal line height
            ),
          ),
          SizedBox(
            height: 18,
          ),
          SearchBar(
            leading: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Icon(
                Icons.search,
                size: 24,
                color: Color.fromRGBO(67, 67, 67, 0.5),
              ),
            ),
            hintText: 'Search',
            hintStyle: MaterialStatePropertyAll(
              TextStyle(
                color: Color.fromRGBO(67, 67, 67, 0.5), // Text color #434343
                fontFamily: 'Poppins',
                // Normal line height
              ),
            ),
            shape: MaterialStatePropertyAll<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
