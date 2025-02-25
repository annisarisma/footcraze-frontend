import 'package:flutter/material.dart';
import 'package:footcraze_frontend/pages/cart_page.dart';
import 'package:footcraze_frontend/pages/checkout_page.dart';
import 'package:footcraze_frontend/pages/checkout_success_page.dart';
import 'package:footcraze_frontend/pages/detail_chat_page.dart';
import 'package:footcraze_frontend/pages/edit_profile_page.dart';
import 'package:footcraze_frontend/pages/home/main_page.dart';
import 'package:footcraze_frontend/pages/product_page.dart';
import 'package:footcraze_frontend/pages/splash_page.dart';
import 'package:footcraze_frontend/pages/sign_in_page.dart';
import 'package:footcraze_frontend/pages/sign_up_page.dart';
import 'package:footcraze_frontend/providers/auth_provider.dart';
import 'package:footcraze_frontend/providers/cart_provider.dart';
import 'package:footcraze_frontend/providers/product_provider.dart';
import 'package:footcraze_frontend/providers/transaction_provider.dart';
import 'package:footcraze_frontend/providers/wishlist_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider()
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider()
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionProvider()
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
