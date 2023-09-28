import 'package:flutter/material.dart';

class RecommendedPicksCategories extends StatefulWidget {
  const RecommendedPicksCategories({super.key});

  @override
  State<RecommendedPicksCategories> createState() =>
      _RecommendedPicksCategoriesState();
}

class _RecommendedPicksCategoriesState
    extends State<RecommendedPicksCategories> {
  int currentIndex = 0;

  void setCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 24, bottom: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(10, (index) {
              return InkWell(
                onTap: () => setCurrentIndex(index),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(6.0), // Set the border radius
                    color: currentIndex == index
                        ? Colors.white
                        : Colors.transparent,
                    border: Border.all(
                      color:
                          const Color(0xFFD3D1CF), // Specify the border color
                      width: 1.0, // Specify the border width
                    ), // Use the desired background color
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8,
                    ),
                    child: Text(
                      'Text Data $index',
                      style: TextStyle(
                        color: currentIndex == index
                            ? const Color(0xFF222222)
                            : Colors.white, // Use the appropriate color code
                        fontFamily: 'Poppins', // Use the desired font family
                        fontSize: 12.0, // Set the font size
                        fontStyle: FontStyle.normal, // Set the font style
                        fontWeight: FontWeight.w500, // Set the font weight
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
