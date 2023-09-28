import 'package:articles_flutter_template/presentation/widgets/header_articles.dart';
import 'package:articles_flutter_template/presentation/widgets/recommended_card.dart';
import 'package:articles_flutter_template/presentation/widgets/recommended_picks.dart';
import 'package:articles_flutter_template/presentation/widgets/subscriptions_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/recommended_picks_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Color(0xFF000000), // #000
                    Color.fromRGBO(0, 0, 0, 0.92),
                    Color.fromRGBO(0, 0, 0, 0.0),
                  ],
                  stops: [0.0829, 0.317, 1.1818],
                  transform:
                      GradientRotation(6.28319), // 359 degrees in radians
                ),
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderArticles(),
                    SizedBox(
                      height: 28,
                    ),
                    SubscriptionsWidget(),
                    SizedBox(
                      height: 26,
                    ),
                    RecommendedPicks(),
                    RecommendedPicksCategories(),
                    Expanded(
                      child: RecommendedCard(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
