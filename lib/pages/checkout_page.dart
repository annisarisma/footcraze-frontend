import 'package:flutter/material.dart';
import 'package:footcraze_frontend/theme.dart';
import 'package:footcraze_frontend/widget/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    AppBar header() {
      return AppBar(
        backgroundColor: bgOneColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout Details',
          style: primaryTextStyle,
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin
        ),
        children: [
          
          // NOTE: List Items
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                ),
                CheckoutCard(),
                CheckoutCard(),
              ],
            ),
          ),

          // NOTE: Address Details
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bgFourColor,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address Details',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/icon_store_location.png',
                          width: 40,
                        ),
                        Image.asset(
                          'assets/images/icon_line.png',
                          height: 30,
                        ),
                        Image.asset(
                          'assets/images/icon_your_address.png',
                          width: 40,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Store Location',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light
                          ),
                        ),
                        Text(
                          'Adidas Core',
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium
                          ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Text(
                          'Your Address',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light
                          ),
                        ),
                        Text(
                          'Marsemoon',
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgThreeColor,
      appBar: header(),
      body: content(),
    );
  }
}