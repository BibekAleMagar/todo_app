import 'package:course/feature/introduction/intro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.of(context,).push(MaterialPageRoute(builder: (context) => OnBoardingPage()));
            },
            child: SizedBox(height: 50, width: 50, child: Text("Click Me"),),
          )
        ],
      ),
    );
  }
}