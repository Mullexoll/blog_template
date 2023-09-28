import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../domain/models/subscription_mock_list.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: subscriptionList.length,
        itemBuilder: (ctx, idx) => Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
          child: Container(
            height: 205,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage(subscriptionList[idx].assetImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.81, -0.74),
                      end: Alignment(1.00, 1.02),
                      colors: [
                        Color(0xFF000000), // #000
                        Color.fromRGBO(0, 0, 0, 0.75),
                        Color.fromRGBO(0, 0, 0, 0.0),
                      ],
                      stops: [0.0829, 0.317, 1.1818],
                      transform:
                          GradientRotation(23.1), // 359 degrees in radians
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        subscriptionList[idx].assetImage),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  child: Image.asset(
                                    subscriptionList[idx].assetAvatar,
                                    fit: BoxFit.cover,
                                    width: 26,
                                    height: 26,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                subscriptionList[idx].author,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 10.0,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/icons/favorite.svg',
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${subscriptionList[idx].cDate} | 3 min read',
                                  style: const TextStyle(
                                    color: Color(
                                        0xFFFFFFFF), // White text color (#FFF)
                                    fontFamily: 'Poppins',
                                    fontSize: 8.0, // 8px font size
                                    fontStyle: FontStyle.normal,
                                    fontWeight:
                                        FontWeight.w400, // 400 font weight
                                    height: 2.0, // Normal line height
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  subscriptionList[idx].title,
                                  style: const TextStyle(
                                    color: Color(
                                        0xFFFFFFFF), // White text color (#FFF)
                                    fontFamily: 'Poppins',
                                    fontSize: 12.0, // 12px font size
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight
                                        .w600, // 600 font weight (semi-bold)
                                    height: 2.0, // Normal line height
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'About stress Maybe ten years ago, we didn’t understand its effects as well because things were simpler. Our food was healthier, technology ...',
                                  style: TextStyle(
                                    color: Color(
                                        0xFFFFFFFF), // White text color (#FFF)
                                    fontFamily: 'Poppins',
                                    fontSize: 8.0, // 8px font size
                                    fontStyle: FontStyle.normal,
                                    fontWeight:
                                        FontWeight.w400, // 400 font weight
                                    height: 2.0, // Normal line height
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () => {},
                            child: const Icon(
                              Icons.more_vert,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
