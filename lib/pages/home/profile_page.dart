import 'package:flutter/material.dart';
import 'package:footcraze_frontend/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    Widget header() {
      return AppBar(
        backgroundColor: bgOneColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(defaultMargin),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/image_profile.png',
                    width: 64,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Alex',
                        style: primaryTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold
                        ),
                      ),
                      Text(
                        '@alexkeinn',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/button_exit.png',
                  width: 20,
                )
              ],
            ),
          )
        ),
      );
    }
    
    return Column(
      children: [
        header(),
        Text('asdasd', style: primaryTextStyle,)
      ],
    );
  }
}