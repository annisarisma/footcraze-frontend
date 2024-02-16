import 'package:flutter/material.dart';
import 'package:footcraze_frontend/pages/home/chat_page.dart';
import 'package:footcraze_frontend/pages/home/home_page.dart';
import 'package:footcraze_frontend/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget cartButton() {
      return FloatingActionButton(
        backgroundColor: secondaryColor,
        onPressed: () {},
        child: Image.asset(
          'assets/images/icon_cart.png',
          width: 20,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100)
        )
      );
    }

    Widget bottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20)
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: bgFourColor,
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.all(0),

          child: BottomNavigationBar(
            backgroundColor: bgFourColor,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (value) {
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/images/icon_home.png',
                    width: 21,
                    color: currentIndex == 0 ? primaryColor : Color(0xff808191),
                  ),
                ),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/images/icon_chat.png',
                    width: 20,
                    color: currentIndex == 1 ? primaryColor : Color(0xff808191),
                  ),
                ),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/images/icon_profile.png',
                    width: 18,
                    color: currentIndex == 3 ? primaryColor : Color(0xff808191),
                  ),
                ),
                label: ''
              ),
            ]
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return ChatPage();
        case 2:
          return HomePage();
        default:
          return HomePage();
      }
    }


    return Scaffold(
      backgroundColor: bgOneColor,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNav(),
      body: body(),
    );
  }
}