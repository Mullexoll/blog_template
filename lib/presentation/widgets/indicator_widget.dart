import 'package:flutter/material.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget(
      {Key? key, required this.currentIndex, required this.length})
      : super(key: key);
  final int currentIndex;
  final int length;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i <= length; i++)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            height: 8,
            width: currentIndex == i ? 37 : 8,
            decoration: BoxDecoration(
              color: currentIndex == i
                  ? Colors.white
                  : const Color.fromRGBO(255, 255, 255, 0.25),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
      ],
    );
  }
}
