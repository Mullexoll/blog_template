import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SubscriptionCard extends StatelessWidget {
  final String label;
  final bool isFavorite;
  final String cDate;
  final String title;
  final String assetAvatar;
  final String author;
  final String assetImage;

  const SubscriptionCard({
    super.key,
    required this.label,
    required this.isFavorite,
    required this.cDate,
    required this.title,
    required this.assetAvatar,
    required this.author,
    required this.assetImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        image: DecorationImage(
          image: AssetImage(assetImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 20, // Set your desired height
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        100), // Border radius of 100 pixels
                    color: const Color(0xFFFFFFFF), // White background color
                  ),
                  child: Center(
                    child: Text(
                      '#$label',
                      style: const TextStyle(
                        color: Color(0xFF222222), // Color #222
                        fontFamily: 'Poppins',
                        fontSize: 8.0, // 8px
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400, // 400
                        height: 1.0, // Normal line height
                      ),
                    ),
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/favorite.svg',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cDate,
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF), // White text color (#FFF)
                    fontFamily: 'Poppins',
                    fontSize: 8.0, // 8px font size
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400, // 400 font weight
                    height: 1.0, // Normal line height
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF), // White text color (#FFF)
                    fontFamily: 'Poppins',
                    fontSize: 12.0, // 12px font size
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600, // 600 font weight (semi-bold)
                    height: 1.0, // Normal line height
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                      child: Image.asset(
                        assetAvatar,
                        fit: BoxFit.cover,
                        width: 26,
                        height: 26,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      author,
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF), // White text color (#FFF)
                        fontFamily: 'Poppins',
                        fontSize: 10.0, // 10px font size
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300, // 300 font weight (light)
                        height: 1.0, // Normal line height
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
