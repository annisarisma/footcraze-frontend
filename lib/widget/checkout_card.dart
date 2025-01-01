import 'package:flutter/material.dart';
import 'package:footcraze_frontend/models/cart_model.dart';
import 'package:footcraze_frontend/theme.dart';

class CheckoutCard extends StatelessWidget {
  
  final CartModel cart;
  CheckoutCard(this.cart); 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 12
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20
      ),
      decoration: BoxDecoration(
        color: bgFourColor,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(
                  'http://10.0.2.2:8000/storage/images/products/product1-2.jpg',
                )
              )
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cart.product!.name!,
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$${cart.product!.price}',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            '${cart.quantity} Items',
            style: secondaryTextStyle.copyWith(
              fontSize: 12
            ),
          )
        ],
      ),
    );
  }
}