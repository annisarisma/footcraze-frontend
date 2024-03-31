import 'package:flutter/material.dart';
import 'package:footcraze_frontend/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 33
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/image_shop_logo.png',
                width: 54,
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15
                      ),
                    ),
                    Text(
                      'Good night, This item is on Good',
                      style: secondaryTextStyle.copyWith(
                        fontWeight: light
                      ),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: defaultMargin,
              ),
              Text(
                'Now',
                style: secondaryTextStyle.copyWith(
                  fontSize: 10
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}