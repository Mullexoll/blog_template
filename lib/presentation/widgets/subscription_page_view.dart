import 'package:articles_flutter_template/presentation/widgets/subscription_card.dart';
import 'package:flutter/material.dart';

import '../../domain/models/subscription_mock_list.dart';
import 'indicator_widget.dart';

class SubscriptionPageView extends StatefulWidget {
  const SubscriptionPageView({super.key});

  @override
  State<SubscriptionPageView> createState() => _SubscriptionPageViewState();
}

class _SubscriptionPageViewState extends State<SubscriptionPageView> {
  int currentIndex = 0;
  PageController controller = PageController(
    initialPage: 0,
    viewportFraction: 0.8,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 177,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 156,
            child: PageView.builder(
              padEnds: false,
              controller: controller,
              itemCount: subscriptionList.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (ctx, idx) => Padding(
                padding: const EdgeInsets.only(right: 11.0),
                child: SubscriptionCard(
                  label: subscriptionList[idx].label,
                  isFavorite: subscriptionList[idx].isFavorite,
                  cDate: subscriptionList[idx].cDate,
                  title: subscriptionList[idx].title,
                  assetAvatar: subscriptionList[idx].assetAvatar,
                  author: subscriptionList[idx].author,
                  assetImage: subscriptionList[idx].assetImage,
                ),
              ),
            ),
          ),
          const Spacer(),
          IndicatorWidget(
            currentIndex: currentIndex,
            length: subscriptionList.length - 1,
          ),
        ],
      ),
    );
  }
}
