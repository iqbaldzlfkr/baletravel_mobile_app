import 'package:bale_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {
  final String textInterest;
  const InterestItem({super.key, required this.textInterest});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(
              right: 6,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/icon_check.png',
                ),
              ),
            ),
          ),
          Text(
            textInterest,
            style: blackTextStyle,
          ),
        ],
      ),
    );
  }
}
