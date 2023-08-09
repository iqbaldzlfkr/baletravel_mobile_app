import 'package:bale_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          route(),
          bookingDetail(),
        ],
      ),
    );
  }
}

Widget route() {
  return Container(
    margin: const EdgeInsets.only(
      top: 50,
    ),
    child: Column(
      children: [
        Container(
          width: 291,
          height: 65,
          margin: const EdgeInsets.only(
            bottom: 10,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/image_checkout.png',
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CGK',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Tangerang',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'TLC',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Ciliwung',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}

Widget bookingDetail() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    padding: const EdgeInsets.symmetric(
      vertical: 30,
      horizontal: 20,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: whiteColor,
    ),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 70,
              height: 70,
              margin: const EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/image_destination1.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lake Ciliwung',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Tangerang',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  margin: const EdgeInsets.only(
                    right: 2,
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_star.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  '4.8',
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
