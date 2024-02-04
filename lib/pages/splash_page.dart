import 'package:flutter/material.dart';
import 'package:footcraze_frontend/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgOneColor,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/image_splash.png'
              )
            )
          ),
        ),
      ),
    );
  }
}
