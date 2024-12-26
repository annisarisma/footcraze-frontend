import 'dart:async';

import 'package:flutter/material.dart';
import 'package:footcraze_frontend/providers/product_provider.dart';
import 'package:footcraze_frontend/theme.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  
  @override
  void initState() {

    getInit();

    super.initState();
  }

  getInit() async {
    await Provider.of<ProductProvider>(context, listen: false).getProducts();
    Navigator.pushNamed(context, '/sign-in');
  }
  
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
