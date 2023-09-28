import 'package:articles_flutter_template/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SlidingTextAnimation extends StatefulWidget {
  const SlidingTextAnimation({super.key});

  @override
  SlidingTextAnimationState createState() => SlidingTextAnimationState();
}

class SlidingTextAnimationState extends State<SlidingTextAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  TextStyle myTextStyle = const TextStyle(
    color: Color(0xFFFFFFFF),
    shadows: [
      Shadow(
        offset: Offset(0, 4),
        blurRadius: 4,
        color: Color.fromRGBO(0, 0, 0, 0.25),
      ),
    ],
    fontFamily: 'Poppins',
    fontSize: 40,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal,
    height: 1.225,
  );

  TextStyle buttonTextStyle = const TextStyle(
    color: Color(0xFFFFFFFF), // White color
    fontFamily: 'Poppins',
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    height: 1.0, // Equivalent to line-height: normal
  );

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(-2.0, 0.0),
      end: Offset.zero,
    ).animate(_controller);

    // Починаємо анімацію
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Text(
                  '''
Read, 
Discover,
and Share 
What 
Matters 
Most
                  ''',
                  style: myTextStyle,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              ),
              child: Container(
                height: 61,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color.fromRGBO(218, 133, 15, 0.20),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Begin Exploring',
                    style: buttonTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
