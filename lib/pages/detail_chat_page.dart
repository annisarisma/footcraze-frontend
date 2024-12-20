import 'package:flutter/material.dart';
import 'package:footcraze_frontend/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {

    AppBar header() {
      return AppBar(
        backgroundColor: bgOneColor,
        toolbarHeight: 70,
        centerTitle: false,
        iconTheme: IconThemeData(
          color: primaryTextColor, // Warna panah back button
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/images/image_shop_logo_online.png',
              width: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoe Store',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14
                  ),
                ),
                Text(
                  'Online',
                  style: secondaryTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 14
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgThreeColor,
      appBar: header(),
    );
  }
}