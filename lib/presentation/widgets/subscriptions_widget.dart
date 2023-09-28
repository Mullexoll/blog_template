import 'package:articles_flutter_template/presentation/widgets/subscription_page_view.dart';
import 'package:flutter/material.dart';

import '../../shared/styles/backdrop_container_style.dart';

class SubscriptionsWidget extends StatelessWidget {
  const SubscriptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: containerDecoration,
        width: double.infinity,
        height: 246,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Your subscriptions',
                style: TextStyle(
                  color: Color(0xFFFFFFFF), // Color #FFF
                  fontFamily: 'Poppins',
                  fontSize: 20.0, // 20px
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600, // 600
                  height: 1.0, // Normal line height
                ),
              ),
            ),
            SubscriptionPageView(),
          ],
        ),
      ),
    );
  }
}
