import 'package:flutter/material.dart';
import 'package:footcraze_frontend/theme.dart';
import 'package:footcraze_frontend/widget/wishlist_card.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return AppBar(
        backgroundColor: bgOneColor,
        centerTitle: true,
        title: Text(
          'Favorite Shoes',
          style: primaryTextStyle,
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishlist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: bgThreeColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/image_wishlist.png',
                width: 74,
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                'You don\'t have dream shoes?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Let\'s find your favorite shoes',
                style: secondaryTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 24
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium
                    ),
                  )
                ),
              )
            ],
          ),
        )
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: bgThreeColor,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin
            ),
            children: [
              WishlistCard(),
              WishlistCard(),
              WishlistCard(),
            ],
          ),
        )
      );
    }

    return Column(
      children: [
        header(),
        // emptyWishlist()
        content()
      ],
    );
  }
}