import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/styles/backdrop_container_style.dart';

class HeaderArticles extends StatelessWidget {
  const HeaderArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60.0,
        left: 20,
        right: 20,
      ),
      child: Container(
        decoration: containerDecoration,
        width: double.infinity,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/icons/menu_icons.svg',
                width: 32,
                height: 32,
              ),
              const Text(
                'Articles',
                style: TextStyle(
                  color: Color(0xFFFFFFFF), // Color #FFF
                  fontFamily: 'Poppins',
                  fontSize: 16.0, // 16px
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600, // 600
                  height: 1.0, // Normal line height
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                child: Image.asset(
                  'assets/images/avatar.jpg',
                  fit: BoxFit.cover,
                  width: 48,
                  height: 48,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
