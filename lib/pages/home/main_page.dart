import 'package:flutter/material.dart';
import 'package:footcraze_frontend/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_home.png',
                  width: 21,
                ),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_chat.png',
                  width: 20,
                ),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_whislist.png',
                  width: 20,
                ),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_profile.png',
                  width: 18,
                ),
                label: ''
              ),
            ]
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgOneColor,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNav(),
      body: Center(
        child: Text(
          'Main Page'
        ),
      ),
    );
  }
}