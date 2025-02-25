import 'package:flutter/material.dart';
import 'package:footcraze_frontend/providers/auth_provider.dart';
import 'package:footcraze_frontend/providers/cart_provider.dart';
import 'package:footcraze_frontend/providers/transaction_provider.dart';
import 'package:footcraze_frontend/theme.dart';
import 'package:footcraze_frontend/widget/checkout_card.dart';
import 'package:provider/provider.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {

    CartProvider cartProvider = Provider.of<CartProvider>(context);
    TransactionProvider transactionProvider = Provider.of<TransactionProvider>(context);
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleCheckout() async {
      if (await transactionProvider.checkout(authProvider.user!.token!, cartProvider.carts, cartProvider.totalPrice())) {
        cartProvider.carts = [];
        Navigator.pushNamedAndRemoveUntil(context, '/checkout-success', (route) => false);
      }
    }

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
                Column(
                  children: cartProvider.carts.map((cart) => CheckoutCard(cart)).toList(),
                )
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
          ),

          // NOTE: Payment Summary
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
                  'Payment Summary',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Quantity',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12
                      ),
                    ),
                    Text(
                      '${cartProvider.totalItems()} Items',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Price',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12
                      ),
                    ),
                    Text(
                      '\$${cartProvider.totalPrice()}',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12
                      ),
                    ),
                    Text(
                      'Free',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xff2E3141),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: priceTextStyle.copyWith(
                        fontWeight: semiBold
                      ),
                    ),
                    Text(
                      '\$${cartProvider.totalPrice()}',
                      style: priceTextStyle.copyWith(
                        fontWeight: semiBold
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          // NOTE: Checkout Button
          SizedBox(
            height: defaultMargin,
          ),
          Divider(
            thickness: 1,
            color: Color(0xff2E3141),
          ),
          Container(
            height: 50,
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              vertical: defaultMargin
            ),
            child: TextButton(
              onPressed: handleCheckout,
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
              child: Text(
                'Checkout Now',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold
                ),
              ),
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