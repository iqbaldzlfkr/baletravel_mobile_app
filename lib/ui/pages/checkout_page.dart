import 'package:bale_travel/shared/theme.dart';
import 'package:bale_travel/ui/widgets/booking_detail_item.dart';
import 'package:bale_travel/ui/widgets/buttons.dart';
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
          paymentDetail(),
          payNowButton(),
          tacSection(),
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
      crossAxisAlignment: CrossAxisAlignment.start,
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
        Container(
          margin: const EdgeInsets.only(
            top: 20,
          ),
          child: Text(
            'Booking Details',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        ),
        BookingDetailItem(
          title: 'Traveler',
          valueText: '2 Person',
          valueColor: blackColor,
        ),
        BookingDetailItem(
          title: 'Seat',
          valueText: 'A3, B3',
          valueColor: blackColor,
        ),
        BookingDetailItem(
          title: 'Insurance',
          valueText: 'YES',
          valueColor: greenColor,
        ),
        BookingDetailItem(
          title: 'Refundable',
          valueText: 'NO',
          valueColor: redColor,
        ),
        BookingDetailItem(
          title: 'VAT',
          valueText: '45%',
          valueColor: blackColor,
        ),
        BookingDetailItem(
          title: 'Price',
          valueText: 'IDR 8.500.690',
          valueColor: blackColor,
        ),
        BookingDetailItem(
          title: 'Grand Total',
          valueText: 'IDR 12.000.000',
          valueColor: blackColor,
        ),
      ],
    ),
  );
}

Widget paymentDetail() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 30,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: whiteColor,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Details',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 70,
                margin: const EdgeInsets.only(
                  right: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/image_card.png',
                    ),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        margin: const EdgeInsets.only(
                          right: 6,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_plane.png',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IDR 80.400.000',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Current Balance',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget payNowButton() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: CustomFilledButton(
      title: 'Pay Now',
      onPressed: () {},
    ),
  );
}

Widget tacSection() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
      bottom: 30,
    ),
    child: CustomTextButton(
      title: 'Terms and Conditions',
      onPressed: () {},
    ),
  );
}
