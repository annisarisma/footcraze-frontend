import 'package:flutter/material.dart';
import 'package:footcraze_frontend/pages/detail_chat_page.dart';
import 'package:footcraze_frontend/pages/home/main_page.dart';
import 'package:footcraze_frontend/pages/splash_page.dart';
import 'package:footcraze_frontend/pages/sign_in_page.dart';
import 'package:footcraze_frontend/pages/sign_up_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
      },
    );
  }
}
