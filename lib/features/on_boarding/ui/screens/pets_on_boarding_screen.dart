import 'package:flutter/material.dart';

class PetsOnBoardingScreen extends StatelessWidget {
  const PetsOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            color: Colors.blue,
            child: PageView.builder(itemBuilder: (context, index) {
              return GestureDetector(
                
              );
            }),
          )
        ],
      )
    );
  }
}