
import 'package:course/feature/introduction/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => const StartScreen()),
                  (route) => false,
  );}

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset(assetName, width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: false,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: _buildImage('assets/logo/logo.png', 100),
          ),
        ),
      ),
      // globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 60,
      //   child: ElevatedButton(
      //     child: const Text(
      //       'Let\'s go right away!',
      //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      //     ),
      //     onPressed: () => _onIntroEnd(context),
      //   ),
      // ),
      pages: [
        PageViewModel(
          titleWidget: Text(""),
         
          image: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildImage('assets/logo/logo.png'),
                Text("Up Todo",
                style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold
              ),
              )
            ],
          ),
         ),
           bodyWidget: Text(""),
          decoration: PageDecoration(
            fullScreen: true,
           ),
        ),
       PageViewModel(
  titleWidget: const SizedBox.shrink(), // empty title
  bodyWidget: Column(
    mainAxisSize: MainAxisSize.min, // Important to prevent Column overflow
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        height: 250, // Use a fixed or responsive height
        child: _buildImage('images/image.png'),
      ),
      const SizedBox(height: 20),
      SizedBox(
        height: 100, // Use a fixed or responsive height
        child: _buildImage('images/nav.png'),
      ),
      const Text(
        "Manage your task",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 30),
      Text(
        "You can manage all of your daily tasks in DoMe for free",
        textAlign: TextAlign.center,
      )
    ],
  ),
  decoration: pageDecoration,
),

      PageViewModel(
  titleWidget: const SizedBox.shrink(), // empty title
  bodyWidget: Column(
    mainAxisSize: MainAxisSize.min, // Important to prevent Column overflow
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        height: 250, // Usea fixed or responsive height
        child: _buildImage('images/Intro2.png'),
      ),
      const SizedBox(height: 20),
      SizedBox(
        height: 100, // Use a fixed or responsive height
        child: _buildImage('images/nav.png'),
      ),
      const Text(
        "Create daily routine",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 30),
      Text(
        "In Uptodo you can create your peronalized routine to stay productive",
        textAlign: TextAlign.center,
      )
    ],
  ),
  decoration: pageDecoration,
),
       PageViewModel(
  titleWidget: const SizedBox.shrink(), // empty title
  bodyWidget: Column(
    mainAxisSize: MainAxisSize.min, // Important to prevent Column overflow
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        height: 250, // Use a fixed or responsive height
        child: _buildImage('images/Intro3.png'),
      ),
      const SizedBox(height: 20),
      SizedBox(
        height: 100, // Use a fixed or responsive height
        child: _buildImage('images/nav.png'),
      ),
      const Text(
        "Organize your task",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 30),
      Text(
        "You can organize your daily tasks by adding your tasks into seperate categories",
        textAlign: TextAlign.center,
      )
    ],
  ),
  decoration: pageDecoration,
),    
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}