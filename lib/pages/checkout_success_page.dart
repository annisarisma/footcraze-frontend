import 'package:flutter/material.dart';
import 'package:footcraze_frontend/theme.dart';

class CheckoutSuccessPage extends StatelessWidget {
  const CheckoutSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppBar header() {
      return AppBar(
        backgroundColor: bgOneColor,
        centerTitle: true,
        title: Text(
          'Checkout Success',
          style: primaryTextStyle,
        ),
        elevation: 0,
      );
    }

    Widget content() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icon_empty_cart.png',
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You made a transaction',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Stay at home while we\nprepare your dream shoes',
              style: secondaryTextStyle,
              textAlign: TextAlign.center,
            ),
            Container(
              width: 196,
              height: 44,
              margin: EdgeInsets.only(
                top: defaultMargin
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
                child: Text(
                  'Order Other Shoes',
                  style: primaryTextStyle,
                )
              ),
            ),
            Container(
              width: 196,
              height: 44,
              margin: EdgeInsets.only(
                top: 12
              ),
              child: TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff39374B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
                child: Text(
                  'View My Order',
                  style: primaryTextStyle,
                )
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgThreeColor,
      appBar: header(),
      body: content(),
    );
  }
}